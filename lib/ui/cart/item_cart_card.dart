import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:test_flutter_dev_twistcode/blocs/bloc_cart.dart';
import 'package:test_flutter_dev_twistcode/models/item_cart_model.dart';
import 'package:test_flutter_dev_twistcode/utils/constants.dart';
import 'package:test_flutter_dev_twistcode/utils/helpers.dart';

import '../../service_locator.dart';

class ItemCart extends StatefulWidget {
  final ItemCartModel itemCartModel;

  const ItemCart({Key key, this.itemCartModel}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return ItemCartState(itemCartModel);
  }
}

class ItemCartState extends State<ItemCart> {
  final ItemCartModel itemCartModel;

  ItemCartState(this.itemCartModel);

  @override
  void initState() {
    super.initState();
  }

  void addItem() {
    setState(() {
      itemCartModel.quantity++;
      locator<BlocCart>().updateItemCartModel(itemCartModel);
      locator<BlocCart>().updateTotalPrice();
    });
  }

  void removeItem() {
    setState(() {
      if (itemCartModel.quantity == 1) {
        itemCartModel.quantity--;
        locator<BlocCart>().removeItemFromCart(itemCartModel);
        locator<BlocCart>().updateTotalPrice();
      } else if (itemCartModel.quantity > 1) {
        itemCartModel.quantity--;
        locator<BlocCart>().updateItemCartModel(itemCartModel);
        locator<BlocCart>().updateTotalPrice();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 5, right: 10, left: 10, bottom: 5),
      child: Card(
          clipBehavior: Clip.antiAlias,
          elevation: 1,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          child: Container(
            height: 100,
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 75.0,
                  width: 75.0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network(
                      URL_IMAGE + itemCartModel.item.defaultPhoto.imgPath,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Text(
                                itemCartModel.item.title,
                                style: TextStyle(fontSize: 16),
                                overflow: TextOverflow.ellipsis,
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(children: [
                                    Expanded(
                                      child: Text(
                                        "${Helpers.formatCurrency.format(int.parse(itemCartModel.item.price))}",
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.orange),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],),
                                  Row(children: [
                                    Expanded(
                                      child: Text(
                                        itemCartModel.item.addedDateStr,
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.grey),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    )
                                  ],)
                                ],
                              ),
                            ),
                            IntrinsicWidth(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    InkResponse(
                                        onTap: removeItem,
                                        child: Container(
                                          padding: const EdgeInsets.all(5),
                                          decoration: BoxDecoration(
                                              color: Colors.redAccent,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(5))),
                                          child: Icon(
                                            Icons.remove,
                                            size: 20,
                                            color: Colors.white,
                                          ),
                                        )),
                                    Container(
                                        width: 40,
                                        padding: const EdgeInsets.all(5),
                                        child: Center(
                                          child: Text(
                                            itemCartModel.quantity.toString(),
                                            style: TextStyle(fontSize: 16),
                                          ),
                                        )),
                                    InkResponse(
                                      onTap: addItem,
                                      child: Container(
                                        padding: const EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                            color: Colors.lightBlueAccent,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(5))),
                                        child: Icon(
                                          Icons.add,
                                          size: 20,
                                          color: Colors.white,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Container(
                                  margin: const EdgeInsets.only(top: 8),
                                  child: Text(
                                      (itemCartModel.weight*itemCartModel.quantity).toString() + " kg",
                                      style: TextStyle(fontSize: 12)),
                                )
                              ],
                            )),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
