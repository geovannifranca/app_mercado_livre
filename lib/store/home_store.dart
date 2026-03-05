import 'package:app_mercado_livre/models/product.dart';
import 'package:app_mercado_livre/store/shopping_cart_store.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
part 'home_store.g.dart';

class HomeStore = HomeStoreBase with _$HomeStore;

abstract class HomeStoreBase with Store {
  HomeStoreBase();

  @observable
  ObservableList<Product> products = [
    Product(
      id: '1',
      name: 'Apple Iphone 11 Pro (128gb) - Preto',
      image: 'assets/images/iphone.png',
      installments: 10,
    ),
    Product(
      id: '2',
      name: 'Apple Iphone 11 Pro (128gb) - Preto',
      image: 'assets/images/iphone.png',
      installments: 10,
    ),
    Product(
      id: '3',
      name: 'Apple Iphone 11 Pro (128gb) - Preto',
      image: 'assets/images/iphone.png',
      installments: 10,
    ),
    Product(
      id: '4',
      name: 'Apple Iphone 11 Pro (128gb) - Preto',
      image: 'assets/images/iphone.png',
      installments: 10,
    ),
    Product(
      id: '5',
      name: 'Apple Iphone 11 Pro (128gb) - Preto',
      image: 'assets/images/iphone.png',
      installments: 10,
    ),
    Product(
      id: '6',
      name: 'Apple Iphone 11 Pro (128gb) - Preto',
      image: 'assets/images/iphone.png',
      installments: 10,
    ),
    Product(
      id: '7',
      name: 'Apple Iphone 11 Pro (128gb) - Preto',
      image: 'assets/images/iphone.png',
      installments: 10,
    ),
    Product(
      id: '8',
      name: 'Apple Iphone 11 Pro (128gb) - Preto',
      image: 'assets/images/iphone.png',
      installments: 10,
    ),
    Product(
      id: '9',
      name: 'Apple Iphone 11 Pro (128gb) - Preto',
      image: 'assets/images/iphone.png',
      installments: 10,
    ),
    Product(
      id: '10',
      name: 'Apple Iphone 11 Pro (128gb) - Preto',
      image: 'assets/images/iphone.png',
      installments: 10,
    ),
    Product(
      id: '11',
      name: 'Apple Iphone 11 Pro (128gb) - Preto',
      image: 'assets/images/iphone.png',
      installments: 10,
    ),
    Product(
      id: '12',
      name: 'Apple Iphone 11 Pro (128gb) - Preto',
      image: 'assets/images/iphone.png',
      installments: 10,
    ),
    Product(
      id: '13',
      name: 'Apple Iphone 11 Pro (128gb) - Preto',
      image: 'assets/images/iphone.png',
      installments: 10,
    ),
    Product(
      id: '14',
      name: 'Apple Iphone 11 Pro (128gb) - Preto',
      image: 'assets/images/iphone.png',
      installments: 10,
    ),
    Product(
      id: '15',
      name: 'Apple Iphone 11 Pro (128gb) - Preto',
      image: 'assets/images/iphone.png',
      installments: 10,
    ),
  ].asObservable();

  @action
  void updateProductEvaluation(Product product, double newRating) {
    final index = products.indexOf(product);

    if (index != -1) {
      final updatedProduct = product.copyWith(evaluation: newRating.toInt());
      products[index] = updatedProduct;

      final cartStore = GetIt.I.get<ShoppingCartStore>();
      cartStore.updateProductInCart(product, updatedProduct);
    }
  }
}
