import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoping_cart/providerClass/cartCount.dart';
import 'package:shoping_cart/shopingCartIconButton.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final cartNumber = Provider.of<CartCount>(context);
    return Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            new Padding(
              padding: const EdgeInsets.all(11.0), //SOME PADDING NEEDED
              child: new Container(
                height: 150.0,
                width: 30.0,
                child: CartButton(),
              ),
            ),
          ],
        ),
        body: Container(
            child: Center(
          child: RaisedButton(
              onPressed: () {
                int num = 1; //PASS HOW MUCH ITEMS YOU WANT TO PASS
                cartNumber.addItemsToCart(num);
              },
              child: Text(
                "Add Items",
              )),
        )));
  }
}
