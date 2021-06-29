import 'package:flutter/material.dart';
import '../Routes/settings.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              child: Center(
                  child: Text(
                'Meals',
                style: TextStyle(
                    fontSize: 32,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              )),
              decoration: BoxDecoration(color: Colors.blueAccent)),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () => Navigator.of(context).pushReplacementNamed('/'),
          ),
          ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () => Navigator.of(context)
                  .pushReplacementNamed(Settings.routeName))
        ],
      ),
    );
  }
}
