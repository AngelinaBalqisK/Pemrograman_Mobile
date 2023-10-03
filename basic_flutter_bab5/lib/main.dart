
import 'package:basic_flutter_bab5/pages/home_page.dart';
import 'package:basic_flutter_bab5/pages/item_page.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => HomePage(),
      '/item': (context) => ItemPage(),
    },
  ));
}