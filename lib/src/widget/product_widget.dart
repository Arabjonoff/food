import 'package:flutter/material.dart';

class ProductWidget extends StatelessWidget {
  final String img,text;
  final int price;
  final Function() onTap;
  const ProductWidget ({super.key, required this.img, required this.text, required this.price, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          margin: EdgeInsets.only(left: 16),
          height: 321,
          width: 220,
          child: Stack(
            children: [
              Positioned(
                bottom:0,
                child: Container(
                  height: 270,
                  width: 220,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(30)
                  ),
                ),
              ),
              Positioned(
                top: 0,
                child: Container(
                  margin: EdgeInsets.only(left: 25),
                  width: 164,
                  height: 164,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.blue
                  ),
                  child: Image.asset(img),
                ),
              )
            ],
          ),
        ),
      );
  }
}
