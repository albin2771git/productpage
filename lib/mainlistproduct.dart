import 'package:flutter/material.dart';
import 'package:productpage/listofproduct.dart';

class SingleProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)?.settings.arguments; //2
    final product = Productsdetails.firstWhere((e) => e["id"] == productId);

    return Scaffold(
      appBar: AppBar(title: Text("Products")),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(children: [
            Container(
              width: 300,
              height: 250,
              child: Image(image: NetworkImage(product["image"])),
            ),

            Text(
              "Name: ${product['name']}",
              style: const TextStyle(fontSize: 30, color: Colors.black),
            ),
            // product price
            Text(
              "Price: ${product['price'].toString()}",
              style: const TextStyle(fontSize: 20, color: Colors.red),
            ),
            // product description
            Text(
              "Description ${product['description']}",
              style: const TextStyle(fontSize: 20, color: Colors.blue),
            ),
          ]),
        ),
      ),
    );
  }
}
