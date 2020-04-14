import 'package:flutter/material.dart';
import 'package:user_preferences/src/pages/home_page.dart';
import 'package:user_preferences/src/pages/setting_page.dart';

class MenuWidget extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Container(),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/img/menu.jpg'),
                fit: BoxFit.cover
                //5.29 video 5
                ),
            ),
            ),
            ListTile(
              title: Text("Pages"),
              leading: Icon(Icons.pages, color: Colors.blue),
              onTap: () => Navigator.pushReplacementNamed(context,HomePage.routeName),
            ),
            ListTile(
              title: Text("Party mode"),
              leading: Icon(Icons.party_mode, color: Colors.blue),
              onTap: (){},
            ),
            ListTile(
              title: Text("People"),
              leading: Icon(Icons.people, color: Colors.blue),
              onTap: (){},
            ),
             ListTile(
              title: Text("Settings"),
              leading: Icon(Icons.settings, color: Colors.blue),
              onTap: () {
                //Navigator.pop(context);
                //Navigator.pushNamed(context, SettingPage.routeName) 
                Navigator.pushReplacementNamed(context, SettingsPage.routeName);
              }
            ),
        ],
      ),
    );
  }
}