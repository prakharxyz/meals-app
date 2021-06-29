import 'package:flutter/material.dart';
import 'package:meals_app/Widgets/meal_item.dart';
import 'package:meals_app/dummy_data.dart';

class Meals extends StatelessWidget {
  static const routeName =
      '/meals'; //we use this static routeName to avoid confusion and making it easily accesible from anywhere

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, Object>;
    //we recieve data from categories in variable type Map<St,Obj> routeArg
    final categoryId = routeArgs['id'];
    final categoryTitle = routeArgs['title'];
    final categoryColor = routeArgs['color'];
    //values are now in routeArgs as key value pairs, so to extract values in variables we define variables
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(
          itemBuilder: (context, index) {
            return MealItem(DUMMY_MEALS[index]);
          },
          itemCount: DUMMY_MEALS.length),
    );
  }
}
