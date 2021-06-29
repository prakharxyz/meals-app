import 'package:flutter/material.dart';
import 'package:meals_app/Models/meal_model.dart';
import 'package:meals_app/Routes/details.dart';

class MealItem extends StatelessWidget {
  final MealModel mealModel;
  MealItem(this.mealModel);

  void selectMeal(BuildContext context) {
    Navigator.of(context)
        .pushNamed(MealDetails.routeName, arguments: mealModel.id);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectMeal(context),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 10,
        child: Column(children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
                child: Image.network(
                  mealModel.imageUrl,
                  height: 230,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 20,
                left: 20,
                child: Container(
                  color: Colors.black38,
                  child: Text(
                    mealModel.title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                ),
              )
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Icon(Icons.timer),
                    Text(mealModel.duration.toString()),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.food_bank),
                    Text(mealModel.getComplexity),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.attach_money),
                    Text(mealModel.getAffordability),
                  ],
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
