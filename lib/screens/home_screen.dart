import 'package:app_mercado_livre/store/home_store.dart';
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
          Expanded(
            flex: 10,
            child: SearchBar(
              onChanged: (value) => _homeStore.search,
              padding: const WidgetStatePropertyAll<EdgeInsets>(
                EdgeInsets.symmetric(horizontal: 12.0),
              ),
              leading: Icon(
                Icons.search,
                size: 20,
                fontWeight: FontWeight.w100,
                color: Colors.black45,
              ),
              hintText: 'Burcar no Mercado Livre',
              hintStyle: WidgetStateProperty.all(
                TextStyle(fontSize: 13.0, height: 2.0),
              ),
              constraints: BoxConstraints(minHeight: 30, maxHeight: 30),
            ),
          ),
          Expanded(flex: 2, child: Icon(Icons.shopping_cart_outlined)),
        ],
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
