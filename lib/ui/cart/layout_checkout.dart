import 'package:flutter/material.dart';
import 'package:test_flutter_dev_twistcode/utils/helpers.dart';

Widget layoutCheckout(context, int total) => Container(
      width: double.infinity,
      height: 100,
      child: Material(
        elevation: 10,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        child: Container(
          margin: const EdgeInsets.all(20),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(
                width: 20,
              ),
              Flexible(
                flex: 3,
                child: checkoutColumnPrice(total),
              ),
              Flexible(
                  flex: 2,
                  child: SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.orange,
                      onPressed: () {
                        showOrderAlertDialog(context);
                      },
                      child: Text('Order'),
                    ),
                  )),
              SizedBox(
                width: 20,
              ),
            ],
          ),
        ),
      ),
    );

Widget checkoutColumnPrice(int total) => Container(
      width: double.infinity,
      child: IntrinsicWidth(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    "Total harga",
                    style: TextStyle(fontSize: 18),
                    overflow: TextOverflow.ellipsis,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    "${Helpers.formatCurrency.format(total)}",
                    style: TextStyle(fontSize: 18, color: Colors.orangeAccent),
                    overflow: TextOverflow.ellipsis,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );

showOrderAlertDialog(context) async {
  final result = await showDialog<bool>(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return orderAlertDialog(context);
      });
  Navigator.of(context).pop(result);
}

Widget orderAlertDialog(context) => AlertDialog(
      title: Text("Order"),
      content: Text("Are you sure?"),
      actions: [
        FlatButton(
          child: Text("No"),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        FlatButton(
          child: Text("Yes"),
          onPressed: () {
            Navigator.of(context).pop(true);
          },
        )
      ],
      elevation: 10,
    );
