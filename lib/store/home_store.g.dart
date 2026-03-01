// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeStore on HomeStoreBase, Store {
  late final _$productsAtom = Atom(
    name: 'HomeStoreBase.products',
    context: context,
  );

  @override
  List<Product> get products {
    _$productsAtom.reportRead();
    return super.products;
  }

  @override
  set products(List<Product> value) {
    _$productsAtom.reportWrite(value, super.products, () {
      super.products = value;
    });
  }

  late final _$productSearchedAtom = Atom(
    name: 'HomeStoreBase.productSearched',
    context: context,
  );

  @override
  Product? get productSearched {
    _$productSearchedAtom.reportRead();
    return super.productSearched;
  }

  @override
  set productSearched(Product? value) {
    _$productSearchedAtom.reportWrite(value, super.productSearched, () {
      super.productSearched = value;
    });
  }

  late final _$HomeStoreBaseActionController = ActionController(
    name: 'HomeStoreBase',
    context: context,
  );

  @override
  void search(String? value) {
    final _$actionInfo = _$HomeStoreBaseActionController.startAction(
      name: 'HomeStoreBase.search',
    );
    try {
      return super.search(value);
    } finally {
      _$HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
products: ${products},
productSearched: ${productSearched}
    ''';
  }
}
