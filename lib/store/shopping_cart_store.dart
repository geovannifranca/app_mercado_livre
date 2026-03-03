import 'package:app_mercado_livre/models/product.dart';
import 'package:mobx/mobx.dart';
part 'shopping_cart_store.g.dart';

class ShoppingCartStore = ShoppingCartStoreBase with _$ShoppingCartStore;

abstract class ShoppingCartStoreBase with Store {
  ShoppingCartStoreBase();

  @observable
  ObservableList<Product> shoppingCart = ObservableList<Product>();

  @action
  bool addShoppingCart({required Product product}) {
    if (shoppingCart.contains(product)) {
      return false;
    } else {
      shoppingCart.add(product);
      return true;
    }
  }
}
