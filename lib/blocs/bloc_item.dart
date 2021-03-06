import 'package:rxdart/rxdart.dart';
import 'package:test_flutter_dev_twistcode/blocs/bloc_base.dart';
import 'package:test_flutter_dev_twistcode/models/item.dart';
import 'package:test_flutter_dev_twistcode/models/reponse.dart';
import 'package:test_flutter_dev_twistcode/resources/repository.dart';

class BlocItem extends BlocBase{
  final _repository = Repository();
  PublishSubject<Response> _itemFetcher;

  init(){
    _itemFetcher = PublishSubject<Response>();
  }

  Stream<Response> get allItems => _itemFetcher.stream;

  fetchAllItems() async {
    Response item = await _repository.fetchItems();
    _itemFetcher.sink.add(item);
  }

  @override
  void dispose() {
    _itemFetcher.close();
  }

}