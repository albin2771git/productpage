import 'package:flutter/material.dart';
import 'package:productpage/listofproduct.dart';

class ProductListPage extends StatelessWidget {
  void _goToSingle(context, productId) {
    Navigator.of(context).pushNamed("Single-item", arguments: productId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Product List Screen",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: GridView.count(
        padding: EdgeInsets.all(20),
        crossAxisCount: 3,
        crossAxisSpacing: 23,
        mainAxisSpacing: 23,
        shrinkWrap: true,
        children: Productsdetails.map((Product) {
          return TextButton(
            onPressed: () => _goToSingle(context, Product["id"]),
            child: Container(
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        child: Image.network(
                          Product["image"],
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        right: 10,
                        top: 90,
                        child: Container(
                          width: 50,
                          height: 30,
                          decoration: BoxDecoration(color: Colors.grey),
                        ),
                      )
                    ],
                  ),
                  Text(Product["name"]),
                  //Text(Product["price"]),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
