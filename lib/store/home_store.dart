import 'package:app_mercado_livre/models/product.dart';
import 'package:mobx/mobx.dart';

// Include generated file
part 'home_store.g.dart';

class HomeStore = HomeStoreBase with _$HomeStore;

abstract class HomeStoreBase with Store {
  HomeStoreBase();

  @observable
  List<Product> products = [];

  @observable
  Product? productSearched;

  @action
  void search(String? value) {
    if (value!.isEmpty) {
      productSearched = null;
    } else {
      try {
        productSearched = products.firstWhere(
          (element) => element.name.toLowerCase().contains(value.toLowerCase()),
        );
      } catch (e) {
        productSearched = null;
      }
    }
  }
}
