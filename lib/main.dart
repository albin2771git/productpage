import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:productpage/mainlistproduct.dart';
import 'package:productpage/productlistpage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ProductListPage(),
    routes: {
      "Single-item": (context) => SingleProductPage(),
    },
  ));
}
