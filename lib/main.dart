import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Screen/cart_view/cart_screen.dart';
import 'Screen/detail_view/detail_screen.dart';
import 'Screen/home/provider/hom_provider.dart';
import 'Screen/home/view/home_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => HomeProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => HomeScreen(),
          'detail_screen': (context) => DetailScreen(),
          'cart_screen': (context) => CartScreen(),
        },
      ),
    ),
  );
}