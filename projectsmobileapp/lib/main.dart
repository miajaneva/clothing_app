import 'package:flutter/material.dart';

void main() => runApp(ClothingApp());

class ClothingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clothing App 206011',
      theme: ThemeData(primarySwatch: Colors.pink),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<Product> products = [
    Product('Shirt', 'A comfortable pink t-shirt', 15.0, 'https://freakins.com/cdn/shop/files/PartyCatalog01771-Edit.jpg?v=1704447236&width=800'),
    Product('Jeans', 'Stylish blue jeans', 40.0, 'https://www.net-a-porter.com/variants/images/1647597331742099/in/w920_a3-4_q60.jpg'),
    Product('Sneakers', 'Nike sneakers', 60.0, 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/2aecf220-1477-4a70-9070-56216a01264b/NIKE+DUNK+LOW+RETRO.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('206011')),
      body: GridView.builder(
        padding: EdgeInsets.all(8.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 4,
        ),
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return Card(
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsPage(product: product),
                  ),
                );
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Image.asset(product.image, fit: BoxFit.cover),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(product.name, style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text('\$${product.price.toStringAsFixed(2)}'),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class DetailsPage extends StatelessWidget {
  final Product product;

  DetailsPage({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product.name)),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: Image.asset(product.image, fit: BoxFit.cover),
            ),
            SizedBox(height: 16.0),
            Text(product.name, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 8.0),
            Text(product.description, style: TextStyle(fontSize: 16)),
            SizedBox(height: 16.0),
            Text('\$${product.price.toStringAsFixed(2)}', style: TextStyle(fontSize: 20, color: Colors.blue)),
          ],
        ),
      ),
    );
  }
}

class Product {
  final String name;
  final String description;
  final double price;
  final String image;

  Product(this.name, this.description, this.price, this.image);
}