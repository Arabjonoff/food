import 'package:flutter/material.dart';
import 'package:food/src/ui/auth/login/login_screen.dart';
import 'package:food/src/ui/onboard/onboard_screen.dart';

import '../../widget/product_widget.dart';

class TabBarMenuScreen extends StatefulWidget {
  const TabBarMenuScreen({super.key});

  @override
  State<TabBarMenuScreen> createState() => _TabBarMenuScreenState();
}

class _TabBarMenuScreenState extends State<TabBarMenuScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: 360,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15))),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/image/logo.png',
                      ),
                      Spacer(),
                      TabBar(
                        tabs: [
                          Tab(
                            text: 'Login',
                          ),
                          Tab(
                            text: 'Sign Up',
                          ),
                        ],
                      ),
                    ],
                  )),
              Expanded(
                child: TabBarView(
                  children: [
                    Expanded(
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (ctx, index) {
                              return ProductWidget(
                                  img: 'assets/image/user.png',
                                  text: 'text',
                                  price: 212,
                                  onTap: () {});
                            })),
                    OnBoardScreen(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
