import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:test_flutter_dev_twistcode/blocs/bloc_cart.dart';
import 'package:test_flutter_dev_twistcode/models/item_cart_model.dart';

import '../../service_locator.dart';
import 'item_cart_card.dart';
import 'layout_checkout.dart';

class Cart extends StatefulWidget {
  final cartBloc = locator<BlocCart>();

  Cart();

  @override
  State<StatefulWidget> createState() {
    return CartState();
  }
}

class CartState extends State<Cart> {
  int totalPrice = 0;

  @override
  void didChangeDependencies() {
    widget.cartBloc.initTotalPriceSubject();
    widget.cartBloc.updateTotalPrice();
    widget.cartBloc.totalPrice.listen((value) {
      setState(() {
        totalPrice = value;
      });
    });
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    widget.cartBloc.disposeTotalPriceSubject();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Cart Shop'),
          centerTitle: true,
          automaticallyImplyLeading: true,
        ),
        body: Stack(
          children: [
            Container(
              child: StreamBuilder(
                stream: widget.cartBloc.allItems,
                builder:
                    (context, AsyncSnapshot<List<ItemCartModel>> snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                      padding: const EdgeInsets.only(bottom: 100),
                      itemCount: snapshot.data.length,
                      itemBuilder: (context, index) {
                        return ItemCart(
                          key: ObjectKey(snapshot.data[index]),
                          itemCartModel: snapshot.data[index],
                        );
                      },
                    );
                  } else {
                    return Center(
                      child: Text(
                        "Cart is empty",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    );
                  }
                },
              ),
            ),
            Positioned.fill(
                bottom: -5,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: layoutCheckout(context, totalPrice),
                ))
          ],
        ));
  }
}
