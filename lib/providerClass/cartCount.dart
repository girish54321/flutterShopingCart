import 'package:flutter/material.dart';

class CartCount with ChangeNotifier {  //THIS IS PROVIDER CLASS TO SAVE CART COUNT
  int _cartCount;

  CartCount(this._cartCount);

  getCartCount() => _cartCount;

  setCartCount(int index) => _cartCount = index;

  void addItemsToCart(int index) {
    _cartCount = index + _cartCount;
    notifyListeners();
  }
}
