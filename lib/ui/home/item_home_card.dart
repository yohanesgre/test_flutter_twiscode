import 'package:flutter/material.dart';
import 'package:test_flutter_dev_twistcode/models/item.dart';
import 'package:test_flutter_dev_twistcode/utils/constants.dart';
import 'package:test_flutter_dev_twistcode/utils/helpers.dart';

class ItemCard extends StatelessWidget {
  final Item item;

  ItemCard(this.item);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 4.0,
      margin: const EdgeInsets.all(10.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Image.network(
                  URL_IMAGE + item.defaultPhoto.imgPath,
                  height: 150.0,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Text(
                        item.title,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "${Helpers.formatCurrency.format(
                                      int.parse(item.price))}",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Colors.orangeAccent),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      size: 12,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Expanded(
                                        child: Text(
                                          item.locationName,
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.grey),
                                          overflow: TextOverflow.ellipsis,
                                        )),
                                  ],
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
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.people,
                                      size: 12,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Expanded(
                                        child: Text(
                                          item.addedUserName,
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.grey),
                                          overflow: TextOverflow.ellipsis,
                                        )),
                                  ],
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                              padding: const EdgeInsets.all(5.0),
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                              child: Wrap(
                                alignment: WrapAlignment.center,
                                children: [
                                  Center(
                                    child: (item.isSoldOut == "0")
                                        ? textStock('Ready Stock')
                                        : textStock('Sold Out'),
                                  ),
                                ],
                              ))
                        ],
                      ),
                    ),
                    (item.isHalal == "1") ? Image.asset(
                      'assets/images/halal.png',
                      fit: BoxFit.fitWidth,
                      width: 40,
                    ) : SizedBox(width: 40,)
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget textStock(String text) =>
    Text(
      text.toUpperCase(),
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.white, fontSize: 10),
    );
