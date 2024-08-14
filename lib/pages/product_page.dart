import 'package:flutter/material.dart';
import 'package:flutter_login_navigation_route/data/dummy/dummy_products.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key, required this.object});

  final Map<String, String> object;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          blogs[int.parse(object['id']!) - 1].title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Text(
                'Author: ${blogs[int.parse(object['id']!) - 1].author}',
                style:
                    const TextStyle(fontSize: 19, fontWeight: FontWeight.w700),
              ),
              Text(
                blogs[int.parse(object['id']!) - 1].content,
                textAlign: TextAlign.justify,
                style: const TextStyle(fontSize: 18),
              )
            ],
          ),
        ),
      ),
    );
  }
}
