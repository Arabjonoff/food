import 'package:flutter/material.dart';
import 'package:food/src/widget/product_widget.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ProductWidget(img: 'assets/image/user.png', text: 'text', price: 212, onTap: (){}),
        ],
      ),
    );
  }
}
