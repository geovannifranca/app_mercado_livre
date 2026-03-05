import 'package:app_mercado_livre/store/shopping_cart_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

class ShoppingCartScreen extends StatefulWidget {
  const ShoppingCartScreen({super.key});

  @override
  State<ShoppingCartScreen> createState() => _ShoppingCartScreenState();
}

class _ShoppingCartScreenState extends State<ShoppingCartScreen> {
  final _shoppingCartStore = GetIt.I.get<ShoppingCartStore>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          key: Key("backBtn"),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          'Carrinho de Compras',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFFFDD835),
      ),
      body: _shoppingCartStore.shoppingCart.isEmpty
          ? Center(
              child: Image.asset(
                key: Key("imageCart"),
                'assets/images/empty_cart.png',
                width: 200,
              ),
            )
          : ListView.separated(
              itemBuilder: (context, index) {
                return Observer(
                  builder: (context) {
                    return Text(
                      '$index - ${_shoppingCartStore.shoppingCart[index].name.toString()} - ${_shoppingCartStore.shoppingCart[index].value * int.parse(_shoppingCartStore.shoppingCart[index].id)} ${_shoppingCartStore.shoppingCart[index].evaluation}',
                    );
                  },
                );
              },
              separatorBuilder: (context, index) => SizedBox(height: 5.0),
              itemCount: _shoppingCartStore.shoppingCart.length,
            ),
    );
  }
}
