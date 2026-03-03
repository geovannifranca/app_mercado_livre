import 'package:app_mercado_livre/store/home_store.dart';
import 'package:flutter/material.dart';

class MlSearchBar extends StatefulWidget {
  final HomeStore _homeStore;
  const MlSearchBar({super.key, required HomeStore homeStore})
    : _homeStore = homeStore;

  @override
  State<MlSearchBar> createState() => _MlSearchBarState();
}

class _MlSearchBarState extends State<MlSearchBar> {
  @override
  Widget build(BuildContext context) {
    return SearchBar(
      elevation: WidgetStateProperty.all(0),
      backgroundColor: WidgetStateProperty.all(Colors.white),
      onChanged: (value) => widget._homeStore.search,
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
        TextStyle(fontSize: 16.0, height: 2.0),
      ),
      constraints: BoxConstraints(minHeight: 38, maxHeight: 38),
    );
  }
}
