import 'package:flutter/material.dart';

class SideMenus extends StatefulWidget {
  @override
  _SideMenusState createState() => _SideMenusState();
}

class _SideMenusState extends State<SideMenus> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          SideMenuTiles(
              key: Key('key'), name: "Burger", imageUrl: "ic_burger", slug: ""),
          SideMenuTiles(
              key: Key('key'), name: "Sushi", imageUrl: "ic_sushi", slug: ""),
          SideMenuTiles(
              key: Key('key'), name: "Pizza", imageUrl: "ic_pizza", slug: ""),
          SideMenuTiles(
              key: Key('key'), name: "Cake", imageUrl: "ic_cake", slug: ""),
          SideMenuTiles(
              key: Key('key'),
              name: "Ice Cream",
              imageUrl: "ic_ice_cream",
              slug: ""),
          SideMenuTiles(
              key: Key('key'),
              name: "Soft Drink",
              imageUrl: "ic_soft_drink",
              slug: ""),
          // SideMenuTiles(
          //     key: Key('key'), name: "Burger", imageUrl: "ic_burger", slug: ""),
          // SideMenuTiles(
          //     key: Key('key'), name: "Sushi", imageUrl: "ic_sushi", slug: ""),
        ],
      ),
    );
  }
}

class SideMenuTiles extends StatelessWidget {
  String name;
  String imageUrl;
  String slug;

  SideMenuTiles(
      {required key,
      required this.name,
      required this.imageUrl,
      required this.slug})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 10, right: 5, top: 5, bottom: 5),
            decoration: new BoxDecoration(boxShadow: [
              new BoxShadow(
                color: Color(0xFFfae3e2),
                blurRadius: 25.0,
                offset: Offset(0.0, 0.75),
              ),
            ]),
            child: Card(
                color: Colors.white,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(3.0),
                  ),
                ),
                child: Container(
                  width: 50,
                  height: 50,
                  child: Center(
                      child: Image.asset(
                    'assets/images/topmenu/' + imageUrl + ".png",
                    width: 24,
                    height: 24,
                  )),
                )),
          ),
          Text(name,
              style: TextStyle(
                  color: Color(0xFF6e6e71),
                  fontSize: 14,
                  fontWeight: FontWeight.w400)),
        ],
      ),
    );
  }
}
