import 'package:flutter/material.dart';
import 'package:test_flutter_dev_twistcode/blocs/bloc_cart.dart';
import 'package:test_flutter_dev_twistcode/blocs/bloc_item.dart';
import 'package:test_flutter_dev_twistcode/models/item.dart';

import '../../service_locator.dart';
import '../route_generator.dart';
import 'item_home_card.dart';

class Home extends StatefulWidget {
  final blocItem = locator<BlocItem>();
  final blocCart = locator<BlocCart>();

  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {

  @override
  void initState() {
    widget.blocCart.init();
    widget.blocItem.init();
    widget.blocItem.fetchAllItems();
    super.initState();
  }

  @override
  void dispose() {
    widget.blocItem.dispose();
    widget.blocCart.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test Flutter Twiscode'),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(cartRoute);
              },
              child: Icon(
                Icons.shopping_cart,
                size: 26,
              ),
            ),
          )
        ],
      ),
      body: StreamBuilder(
        stream: widget.blocItem.allItems,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return buildGridList(context, snapshot);
          } else if (snapshot.hasError) {
            return Text(snapshot.error.toString());
          }
          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }

  Widget buildGridList(context, AsyncSnapshot<List<Item>> snapshot) {
    return GridView.builder(
      itemCount: snapshot.data.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: MediaQuery.of(context).size.width / 2 / 300.0,
      ),
      itemBuilder: (context, index) {
        return GridTile(
          child: Builder(builder: (ctx) => InkResponse(
            enableFeedback: true,
            child: ItemCard(snapshot.data[index]),
            onTap: () {
              widget.blocCart.addItemToCart(snapshot.data[index]);
              moveToCartPage(ctx);
            },
          ),)
        );
      },
    );
  }

  void moveToCartPage(ctx) async {
    final result = await Navigator.of(context).pushNamed(cartRoute);

    final snackBar = SnackBar(
        behavior: SnackBarBehavior.floating, content: Text('Order successful'));

    if (result != null && result) {
      widget.blocCart.resetCart();
      Scaffold.of(ctx).showSnackBar(snackBar);
    }
  }
}
