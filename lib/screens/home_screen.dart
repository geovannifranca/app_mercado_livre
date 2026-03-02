import 'package:app_mercado_livre/store/home_store.dart';
import 'package:app_mercado_livre/widgets/cep.widget.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Spacer(),
          Expanded(flex: 10, child: MlSearchBar(homeStore: _homeStore)),
          Expanded(flex: 2, child: Icon(Icons.shopping_cart_outlined)),
        ],
        bottom: PreferredSize(preferredSize: Size(0, 40), child: Cep()),
        backgroundColor: Color(0xFFFDD835),
      ),
      body: Observer(
        builder: (context) {
          return _homeStore.productSearched != null
              ? Text(_homeStore.productSearched!.name)
              : Text('Lista de produto');
        },
      ),
    );
  }
}
