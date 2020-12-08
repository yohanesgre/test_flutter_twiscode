import 'package:test_flutter_dev_twistcode/models/item.dart';
import 'package:test_flutter_dev_twistcode/models/reponse.dart';
import 'package:test_flutter_dev_twistcode/resources/remote_data_provider.dart';

class Repository{
  final remoteDataProvider = RemoteDataProvider();
  Future<Response> fetchItems() => remoteDataProvider.fetchItems();
}