import 'package:flutter/material.dart';
import 'package:meals_app/Routes/details.dart';
import 'package:meals_app/Routes/meals.dart';
import 'package:meals_app/Routes/settings.dart';
import 'package:meals_app/Routes/tabs.dart';

import 'Routes/categories.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: BottomTab(), routes: {
      CategoriesList.routeName: (ctx) => CategoriesList(),
      Meals.routeName: (ctx) => Meals(),
      MealDetails.routeName: (ctx) => MealDetails(),
      Settings.routeName: (ctx) => Settings()
    });
  }
}
