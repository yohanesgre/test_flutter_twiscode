import 'package:get_it/get_it.dart';
import 'blocs/bloc_cart.dart';
import 'blocs/bloc_item.dart';

GetIt locator = GetIt.instance;
void setupLocator() {
  locator.registerSingleton<BlocItem>(BlocItem());
  locator.registerSingleton<BlocCart>(BlocCart());
}