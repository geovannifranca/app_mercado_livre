// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shopping_cart_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ShoppingCartStore on ShoppingCartStoreBase, Store {
  late final _$shoppingCartAtom = Atom(
    name: 'ShoppingCartStoreBase.shoppingCart',
    context: context,
  );

  @override
  ObservableList<Product> get shoppingCart {
    _$shoppingCartAtom.reportRead();
    return super.shoppingCart;
  }

  @override
  set shoppingCart(ObservableList<Product> value) {
    _$shoppingCartAtom.reportWrite(value, super.shoppingCart, () {
      super.shoppingCart = value;
    });
  }

  late final _$ShoppingCartStoreBaseActionController = ActionController(
    name: 'ShoppingCartStoreBase',
    context: context,
  );

  @override
  bool addShoppingCart({required Product product}) {
    final _$actionInfo = _$ShoppingCartStoreBaseActionController.startAction(
      name: 'ShoppingCartStoreBase.addShoppingCart',
    );
    try {
      return super.addShoppingCart(product: product);
    } finally {
      _$ShoppingCartStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
shoppingCart: ${shoppingCart}
    ''';
  }
}
