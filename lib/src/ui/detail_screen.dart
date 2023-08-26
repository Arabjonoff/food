import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  int _currentIndex = 0;



  Widget build(BuildContext context) {
    List<int> data = [1,23,];

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 241,
              child: PageView.builder(
                itemCount: data.length,
                  onPageChanged: (i) {
                    _currentIndex = i;
                    setState(() {});
                  },
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (ctx, index) {
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 70),
                      width: 241,
                      height: 241,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(200)),
                    );
                  }),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: _buildIndicator(data.length),
            )
          ],
        ),
      ),
    );
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      margin: EdgeInsets.only(left: 8),
      height: 10,
      width: isActive?32:10,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: isActive ? Colors.black : Colors.red),
      duration: Duration(milliseconds: 300),
    );
  }

  List<Widget> _buildIndicator(int length) {
    List<Widget> indicator = [];
    for (int i = 0; i < length; i++) {
      if (_currentIndex == i) {
        indicator.add(_indicator(true));
      } else {
        indicator.add(_indicator(false));
      }
    }
    return indicator;
  }
}
