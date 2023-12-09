import 'package:flutter/material.dart';
import 'package:flutter_app/animation/ScaleRoute.dart';
import 'package:flutter_app/pages/FoodDetailsPage.dart';
import 'package:flutter_app/widgets/SideMenus.dart';
import 'package:settings_ui/settings_ui.dart';

class AccountSettingWidget extends StatefulWidget {
  @override
  _AccountSettingWidgetState createState() => _AccountSettingWidgetState();
}

class _AccountSettingWidgetState extends State<AccountSettingWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 800,
      width: double.infinity,
      child: Column(
        children: <Widget>[
          AccountSettingTitle(),
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: <Color>[
                    Color.fromARGB(255, 233, 171, 83),
                    Color.fromARGB(255, 255, 132, 0),
                  ],
                  begin: FractionalOffset(0.0, 0.0),
                  end: FractionalOffset(1.0, 1.0),
                  stops: <double>[0.0, 1.0],
                  tileMode: TileMode.clamp),
            ),
            width: 300.0,
            height: 2.0,
          ),
          Container(
            height: 700,
            width: double.infinity,
            child: SettingsList(
              applicationType: ApplicationType.cupertino,
              platform: DevicePlatform.web,
              sections: [
                SettingsSection(
                  //title: Text('Test Title'),
                  tiles: [
                    SettingsTile.navigation(
                      title: Text('Name : David King'),
                    ),
                    SettingsTile.navigation(
                      title: Text('Email : david.king@gmail.com'),
                    ),
                    SettingsTile.navigation(
                      title: Text('Password : ********'),
                    ),
                    SettingsTile.navigation(
                      title: Text('Point Balance : 168'),
                    ),
                    SettingsTile.navigation(
                      title: Text('Email : david.king@gmail.com'),
                    ),
                    SettingsTile.navigation(
                      title: Text('Food Preference : Veggie'),
                    ),
                    SettingsTile.navigation(
                      title: Text('Allergens : Peanut, Milk'),
                    ),
                    SettingsTile.navigation(
                      title: Text('Celebrations: Jan. 15'),
                    ),
                    SettingsTile.navigation(
                      title: Text('Payment : **************0492'),
                    ),
                    SettingsTile.navigation(
                      title: Text('Friends : John S., Jerry W.'),
                    ),

                    // SettingsTile.switchTile(
                    //   onToggle: (_) {},
                    //   initialValue: false,
                    //   title: Text('Unlimited Ad Presentation'),
                    // ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class AccountSettingTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Account Setting",
            style: TextStyle(
                fontSize: 20,
                color: Color(0xFF3a3a3b),
                fontWeight: FontWeight.w300),
          ),
          // Text(
          //   "See all",
          //   style: TextStyle(
          //       fontSize: 16, color: Colors.blue, fontWeight: FontWeight.w100),
          // )
        ],
      ),
    );
  }
}
