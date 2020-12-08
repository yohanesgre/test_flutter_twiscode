import 'dart:developer';

import 'package:rxdart/rxdart.dart';
import 'package:test_flutter_dev_twistcode/blocs/bloc_base.dart';
import 'package:test_flutter_dev_twistcode/models/item.dart';
import 'package:test_flutter_dev_twistcode/models/item_cart_model.dart';

class BlocCart extends BlocBase {
  BehaviorSubject<List<ItemCartModel>> _cartSubject;
  BehaviorSubject<int> _totalPriceSubject;
  List<ItemCartModel> _cartItemList;

  BlocCart() {
    _cartItemList = new List();
    init();
  }

  init() {
    _cartSubject = BehaviorSubject<List<ItemCartModel>>();
  }

  initTotalPriceSubject(){
    _totalPriceSubject = BehaviorSubject<int>();
  }

  Stream<List<ItemCartModel>> get allItems => _cartSubject.stream;

  Stream<int> get totalPrice => _totalPriceSubject.stream;

  void resetCart(){
    _cartSubject.sink.add(null);
  }

  void addItemToCart(Item item) {
    var contains = _cartItemList.where((x) => x.item.id == item.id);
    if (contains.isNotEmpty) {
      contains.first.quantity++;
    } else {
      log(item.weight);
      _cartItemList.add(ItemCartModel(item, 1, item.weight.isEmpty?0:double.parse(item.weight)));
    }
    _cartSubject.sink.add(_cartItemList);
  }

  void removeItemFromCart(ItemCartModel item) {
    final selectIndex = _cartItemList.indexWhere((x)=>x.item.id == item.item.id);
    _cartItemList[selectIndex] = item;
    _cartItemList.removeAt(selectIndex);
    _cartSubject.sink.add(_cartItemList);
  }

  void updateItemCartModel(ItemCartModel item) {
    final selectIndex = _cartItemList.indexWhere((x)=>x.item.id == item.item.id);
    _cartItemList[selectIndex] = item;
    _cartSubject.sink.add(_cartItemList);
  }

  updateTotalPrice() {
    var temp = 0;
    if (_cartItemList.isNotEmpty) {
      _cartItemList.forEach((x) {
        temp += int.parse(x.item.price) * x.quantity;
      });
    }
    _totalPriceSubject.add(temp);
  }

  void disposeTotalPriceSubject(){
    _totalPriceSubject.close();
  }

  @override
  void dispose() {
    _cartSubject.close();
  }
}
