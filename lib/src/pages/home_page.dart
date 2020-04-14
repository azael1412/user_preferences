import 'package:flutter/material.dart';


import 'package:user_preferences/src/widgets/menu_widget.dart';
import 'package:user_preferences/src/shared_preferences/user_preferences.dart';

class HomePage extends StatelessWidget {
  static final String routeName = 'home';
  final prefs = new UserPreferences();
  //const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    prefs.ultimaPagina = HomePage.routeName;
    return Scaffold(
      appBar: AppBar(
        title: Text("Preferencias de usurio"),
        backgroundColor: (prefs.colorSecundario) ? Colors.teal : Colors.blue,
      ),
      drawer: MenuWidget(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
            Text('Color secundario: ${ prefs.colorSecundario }'),
          Divider(),
          Text("Genero ${prefs.genero}"),
          Divider(),
          Text('Nombre usuario: ${ prefs.nombreUsuario }'),
          Divider(),
        ],
      ),
    );
  }
  /*Drawer _createDrawer({BuildContext context}){
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
                Navigator.pushReplacementNamed(context, SettingPage.routeName);
              }
            ),
        ],
      ),
    );
  }*/
}