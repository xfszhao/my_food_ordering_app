import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/animation/ScaleRoute.dart';
import 'package:flutter_app/pages/SignInPage.dart';
import 'package:flutter_app/widgets/BestFoodWidget.dart';
import 'package:flutter_app/widgets/BottomNavBarWidget.dart';
import 'package:flutter_app/widgets/PopularFoodsWidget.dart';
import 'package:flutter_app/widgets/SearchWidget.dart';
import 'package:flutter_app/widgets/SideMenus.dart';

class FoodPage extends StatefulWidget {
  @override
  _FoodPageState createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Color(0xFFFAFAFA),
      //   elevation: 0,
      //   title: Text(
      //     "What would you like to eat?",
      //     style: TextStyle(
      //         color: Color(0xFF3a3737),
      //         fontSize: 16,
      //         fontWeight: FontWeight.w500),
      //   ),
      //   systemOverlayStyle:
      //       SystemUiOverlayStyle(statusBarBrightness: Brightness.light),
      //   actions: <Widget>[
      //     IconButton(
      //         icon: Icon(
      //           Icons.notifications_none,
      //           color: Color(0xFF3a3737),
      //         ),
      //         onPressed: () {
      //           Navigator.pushReplacement(
      //               context, ScaleRoute(page: SignInPage()));
      //         })
      //   ],
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            // SearchWidget(),
            // TopMenus(),
            PopularFoodsWidget(),
            // BestFoodWidget(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBarWidget(),
    );
  }
}
