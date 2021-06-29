import 'package:flutter/material.dart';
import 'package:meals_app/Widgets/category_item.dart';
import 'package:meals_app/dummy_data.dart';

//this is our home page
class CategoriesList extends StatelessWidget {
  static const routeName = '/categories';

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate:
          SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 200),
      padding: EdgeInsets.all(10),
      children: DUMMY_CATEGORIES.map((cM) => CategoryItem(cM)).toList(),
      //it'll map List<CategoryModel>
      //as map will return CategoryModel object, the class CategoryItem will create a template for each item using CategoryModel obj argumen
    );
  }
}
