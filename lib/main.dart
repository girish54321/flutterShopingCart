
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoping_cart/homeScrren.dart';
import 'package:shoping_cart/providerClass/cartCount.dart';


void main() => runApp(
  MultiProvider(
    providers: [
      ChangeNotifierProvider(builder: (context) => CartCount(0)), //SET CART NUM TO 0
    ],
    child: MyApp(),
  ),
);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bottom Nav Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
