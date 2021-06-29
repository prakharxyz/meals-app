import 'package:flutter/material.dart';
import 'package:meals_app/Models/category_model.dart';
import 'package:meals_app/Routes/meals.dart';

class CategoryItem extends StatelessWidget {
  final CategoryModel categoryModel;
  CategoryItem(this.categoryModel);

  @override
  Widget build(BuildContext context) {
    return InkWell( 
      onTap: () => selectCategory(context),
      child: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
                colors: [categoryModel.color[100], categoryModel.color],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight)),
        child: Center(
          child: Text(
            categoryModel.title,
            style: TextStyle(
                color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

//function to navigate to meal screen 
  void selectCategory(BuildContext context) {
    Navigator.of(context).pushNamed(Meals.routeName, arguments: {
      'id': categoryModel.id,
      'title': categoryModel.title,
      'color': categoryModel.color
    });
    //pushNamed to push routeName and pass data such as id, color, title as arguments to Meals route
  }
}
