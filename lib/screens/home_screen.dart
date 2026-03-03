import 'package:app_mercado_livre/store/home_store.dart';
import 'package:app_mercado_livre/widgets/cep.widget.dart';
import 'package:app_mercado_livre/widgets/filter.widget.dart';
import 'package:app_mercado_livre/widgets/ml_card.widget.dart';
import 'package:app_mercado_livre/widgets/ml_search_bar.widget.dart';
import 'package:flutter/material.dart';

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
        actionsPadding: EdgeInsets.symmetric(horizontal: 20),
        actions: [
          Expanded(flex: 12, child: MlSearchBar(homeStore: _homeStore)),
          Expanded(
            flex: 2,
            child: Icon(Icons.shopping_cart_outlined, size: 28),
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
                return MlCard(product: _homeStore.products[index]);
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
