import 'package:app_mercado_livre/store/shopping_cart_store.dart';
import 'package:flutter/material.dart';

class ShoppingCartScreen extends StatefulWidget {
  final ShoppingCartStore shoppingCartStore;
  const ShoppingCartScreen({super.key, required this.shoppingCartStore});

  @override
  State<ShoppingCartScreen> createState() => _ShoppingCartScreenState();
}

class _ShoppingCartScreenState extends State<ShoppingCartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Carrinho de Compras',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFFFDD835),
      ),
      body: widget.shoppingCartStore.shoppingCart.isEmpty
          ? Center(
              child: Image.asset('assets/images/empty_cart.png', width: 200),
            )
          : ListView.separated(
              itemBuilder: (context, index) {
                return Text(
                  '$index - ${widget.shoppingCartStore.shoppingCart[index].name.toString()} - ${widget.shoppingCartStore.shoppingCart[index].value * int.parse(widget.shoppingCartStore.shoppingCart[index].id)} ${widget.shoppingCartStore.shoppingCart[index].evaluation}',
                );
              },
              separatorBuilder: (context, index) => SizedBox(height: 5.0),
              itemCount: widget.shoppingCartStore.shoppingCart.length,
            ),
    );
  }
}
