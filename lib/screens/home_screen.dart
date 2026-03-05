import 'package:app_mercado_livre/screens/Shopping_cart_screen.dart';
import 'package:app_mercado_livre/store/home_store.dart';
import 'package:app_mercado_livre/store/shopping_cart_store.dart';
import 'package:app_mercado_livre/widgets/cep.widget.dart';
import 'package:app_mercado_livre/widgets/filter.widget.dart';
import 'package:app_mercado_livre/widgets/ml_card.widget.dart';
import 'package:app_mercado_livre/widgets/ml_search_bar.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _homeStore = GetIt.I.get<HomeStore>();
  final _shoppingCartStore = GetIt.I.get<ShoppingCartStore>();

  late Future<void> _loadProductsFuture;

  @override
  void initState() {
    _loadProductsFuture = Future.delayed(const Duration(seconds: 6));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actionsPadding: EdgeInsets.only(right: 20, left: 20),
        actions: [
          Expanded(flex: 12, child: MlSearchBar(key: Key("inputSearch"))),
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
                      builder: (context) => ShoppingCartScreen(),
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
            child: FutureBuilder(
              future: _loadProductsFuture,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(
                    child: CircularProgressIndicator(color: Color(0xFFFDD835)),
                  );
                }
                return ListView.separated(
                  itemBuilder: (context, index) {
                    return MlCard(
                      key: Key("productItem"),
                      product: _homeStore.products[index],
                      onPressed: () {
                        bool added = _shoppingCartStore.addShoppingCart(
                          product: _homeStore.products[index],
                        );
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            closeIconColor: Colors.black,
                            showCloseIcon: true,
                            content: Text(
                              added
                                  ? 'Produto adicionado!'
                                  : 'Produto já está no carrinho!',
                              style: const TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            backgroundColor: added ? Colors.yellow : Colors.red,
                          ),
                        );
                      },
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(height: 6),
                  itemCount: _homeStore.products.length,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
