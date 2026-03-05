import 'package:app_mercado_livre/my_app.dart';
import 'package:app_mercado_livre/store/home_store.dart';
import 'package:app_mercado_livre/store/shopping_cart_store.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

void main() {
  GetIt getIt = GetIt.I;
  getIt.registerSingleton<HomeStore>(HomeStore());
  getIt.registerSingleton<ShoppingCartStore>(ShoppingCartStore());
  runApp(const MyApp());
}
