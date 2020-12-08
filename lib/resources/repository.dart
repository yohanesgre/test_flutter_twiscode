import 'package:test_flutter_dev_twistcode/models/item.dart';
import 'package:test_flutter_dev_twistcode/resources/remote_data_provider.dart';

class Repository{
  final remoteDataProvider = RemoteDataProvider();
  Future<List<Item>> fetchItems() => remoteDataProvider.fetchItems();
}