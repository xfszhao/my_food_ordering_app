import 'package:flutter/material.dart';
import 'package:flutter_app/animation/ScaleRoute.dart';
import 'package:flutter_app/pages/AccountPage.dart';
import 'package:flutter_app/pages/FoodPage.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavBarWidget extends StatefulWidget {
  BottomNavBarWidget({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _BottomNavBarWidgetState createState() => _BottomNavBarWidgetState();
}

// class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
//   int _bottomSelectedIndex = 0;

//   List<BottomNavigationBarItem> buildBottomNavBarItems() {
//     return [
//       BottomNavigationBarItem(
//         icon: Icon(Icons.restaurant),
//         label: 'Food',
//       ),
//       BottomNavigationBarItem(
//         icon: Icon(Icons.table_restaurant),
//         label: 'Table',
//       ),
//       BottomNavigationBarItem(
//         icon: Icon(Icons.people),
//         label: 'Friends',
//       ),
//       BottomNavigationBarItem(
//         icon: Icon(Icons.shopping_basket),
//         label: 'Cart',
//       ),
//       BottomNavigationBarItem(
//         icon: Icon(Icons.person),
//         label: 'Account',
//       ),
//     ];
//   }

//   PageController pageController = PageController(
//     initialPage: 0,
//     keepPage: true,
//   );

//   Widget buildPageView() {
//     return PageView(
//       controller: pageController,
//       onPageChanged: (index) {
//         pageChanged(index);
//       },
//       children: <Widget>[
//         FoodPage(),
//         FoodPage(),
//         FoodPage(),
//         FoodPage(),
//         AccountPage()
//       ],
//     );
//   }

//   @override
//   void initState() {
//     super.initState();
//   }

//   void pageChanged(int index) {
//     setState(() {
//       _bottomSelectedIndex = index;
//     });
//   }

//   void bottomTapped(int index) {
//     setState(() {
//       _bottomSelectedIndex = index;
//       pageController.animateToPage(index,
//           duration: Duration(milliseconds: 500), curve: Curves.ease);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // appBar: AppBar(
//       //   title: Text(widget.title),
//       // ),
//       body: buildPageView(),
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _bottomSelectedIndex,
//         selectedItemColor: Color(0xFFfd5352),
//         onTap: (index) {
//           bottomTapped(index);
//         },
//         items: buildBottomNavBarItems(),
//       ),
//     );
//   }
// }

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 0;

    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
        print("zzz index $index");
        if (index == 0) {
          Navigator.pushReplacement(context, ScaleRoute(page: FoodPage()));
        } else {
          Navigator.pushReplacement(context, ScaleRoute(page: AccountPage()));
        }
        //navigateToScreens(index);
      });
    }

    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.restaurant),
          label: 'Food',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.table_restaurant),
          label: 'Table',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.people),
          label: 'Friends',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_basket),
          label: 'Cart',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Account',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Color(0xFFfd5352),
      onTap: _onItemTapped,
    );
  }
}
