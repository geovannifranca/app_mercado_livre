import 'package:app_mercado_livre/store/home_store.dart';
import 'package:flutter/material.dart';

class Filter extends StatefulWidget {
  final HomeStore homeStore;
  const Filter({super.key, required this.homeStore});

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  late Future<void> _loadProductsFuture;

  @override
  void initState() {
    _loadProductsFuture = Future.delayed(const Duration(seconds: 6));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(68, 0, 0, 0),
            offset: Offset(-1, 3),
            blurRadius: 0,
            spreadRadius: -1,
          ),
        ],
      ),
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FutureBuilder(
            future: _loadProductsFuture,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Text('0 Resultados', style: TextStyle(fontSize: 18.0));
              }
              return Text(
                '${widget.homeStore.products.length} Resultados',
                style: TextStyle(fontSize: 18.0),
              );
            },
          ),
          Row(
            children: [
              Text(
                'Filtrar (2)',
                style: TextStyle(color: Colors.blue, fontSize: 18.0),
              ),
              Icon(
                Icons.keyboard_arrow_down_sharp,
                size: 28,
                color: Colors.blue,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
