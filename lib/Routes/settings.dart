import 'package:flutter/material.dart';
import 'package:meals_app/Widgets/main_drawer.dart';

class Settings extends StatefulWidget {
  static const routeName = '/settings';

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  var isGlutenFree = false;
  var isLactoseFree = false;
  var isVegan = false;
  var isVegetarian = false;

  Widget buildSwitchListTile(String title, bool value, Function fx) {
    return SwitchListTile(title: Text(title), value: value, onChanged: fx);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        actions: [
          IconButton(
            icon: Icon(Icons.save),
            onPressed: null,
          )
        ],
      ),
      drawer: MainDrawer(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text('adjust filter switches :-',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700)),
          ),
          Expanded(
              child: ListView(
            children: [
              buildSwitchListTile('Gluten Free', isGlutenFree, (val) {
                setState(() {
                  isGlutenFree = val;
                });
              }),
              buildSwitchListTile('Lactose Free', isLactoseFree, (val) {
                setState(() {
                  isLactoseFree = val;
                });
              }),
              buildSwitchListTile('Vegan', isVegan, (val) {
                setState(() {
                  isVegan = val;
                });
              }),
              buildSwitchListTile('Gluten Free', isVegetarian, (val) {
                setState(() {
                  isVegetarian = val;
                });
              }),
            ],
          ))
        ],
      ),
    );
  }
}
