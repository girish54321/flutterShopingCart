import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoping_cart/providerClass/cartCount.dart';

class CartButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cartNumber = Provider.of<CartCount>(context);
    return Badge(
      elevation: 0,
      badgeColor: Colors.pink,
      padding: EdgeInsets.all(2),
      position: BadgePosition.topRight(top: 1),
      animationDuration: Duration(milliseconds: 300),
      animationType: BadgeAnimationType.scale,
      badgeContent: Text(
        cartNumber.getCartCount().toString(),
        style: TextStyle(color: Colors.white),
      ),
      child: IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {
        print("GO TO CART SCREEN");
      }),
    );
  }
}
