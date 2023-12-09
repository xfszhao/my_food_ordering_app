import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/AccountSettingWidget.dart';
import 'package:settings_ui/settings_ui.dart';
import 'package:flutter_app/widgets/BottomNavBarWidget.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  _AccountPage createState() => _AccountPage();
}

class _AccountPage extends State<AccountPage> {
  bool darkTheme = true;

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
            AccountSettingWidget(),
            // BestFoodWidget(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBarWidget(
        title: 'Title',
      ),
    );
    // return CupertinoPageScaffold(
    //   navigationBar: CupertinoNavigationBar(middle: Text('Developer')),
    //   child: SafeArea(
    //     bottom: false,
    //     child: SettingsList(
    //       applicationType: ApplicationType.cupertino,
    //       platform: DevicePlatform.iOS,
    //       sections: [
    //         SettingsSection(
    //           title: Text('IAD DEVELOPER APP TESTING'),
    //           tiles: [
    //             SettingsTile.navigation(
    //               title: Text('Fill Rate'),
    //             ),
    //             SettingsTile.navigation(
    //               title: Text('Add Refresh Rate'),
    //             ),
    //             // SettingsTile.switchTile(
    //             //   onToggle: (_) {},
    //             //   initialValue: false,
    //             //   title: Text('Unlimited Ad Presentation'),
    //             // ),
    //           ],
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }
}
