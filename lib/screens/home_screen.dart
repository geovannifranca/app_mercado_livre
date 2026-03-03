import 'package:app_mercado_livre/screens/Shopping_cart_screen.dart';
import 'package:app_mercado_livre/store/home_store.dart';
import 'package:app_mercado_livre/store/shopping_cart_store.dart';
import 'package:app_mercado_livre/widgets/cep.widget.dart';
import 'package:app_mercado_livre/widgets/filter.widget.dart';
import 'package:app_mercado_livre/widgets/ml_card.widget.dart';
import 'package:app_mercado_livre/widgets/ml_search_bar.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final HomeStore _homeStore = HomeStore();
  final ShoppingCartStore _shoppingCartStore = ShoppingCartStore();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actionsPadding: EdgeInsets.only(right: 20, left: 20),
        actions: [
          Expanded(flex: 12, child: MlSearchBar(homeStore: _homeStore)),
          Expanded(
            flex: 2,
            child: Center(
              child: Badge(
                offset: Offset(-5, 4),
                backgroundColor: Colors.red,
                label: Observer(
                  builder: (_) {
                    return Text(
                      _shoppingCartStore.shoppingCart.length.toString(),
                      style: const TextStyle(color: Colors.white),
                    );
                  },
                ),
                child: IconButton(
                  icon: Icon(Icons.shopping_cart_outlined, size: 30),
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ShoppingCartScreen(
                        shoppingCartStore: _shoppingCartStore,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size(0, 40),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Cep(),
          ),
        ),
        backgroundColor: Color(0xFFFDD835),
      ),
      body: Column(
        children: [
          Filter(),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                return MlCard(
                  product: _homeStore.products[index],
                  onPressed: () {
                    bool added = _shoppingCartStore.addShoppingCart(
                      product: _homeStore.products[index],
                    );
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          added
                              ? 'Produto adicionado!'
                              : 'Produto já está no carrinho!',
                        ),
                        backgroundColor: added ? Colors.green : Colors.red,
                        duration: const Duration(seconds: 2),
                      ),
                    );
                  },
                );
              },
              separatorBuilder: (context, index) => SizedBox(height: 6),
              itemCount: _homeStore.products.length,
            ),
          ),
        ],
      ),
    );
  }
}
