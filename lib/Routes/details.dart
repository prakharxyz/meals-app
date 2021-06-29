import 'package:flutter/material.dart';
import 'package:meals_app/dummy_data.dart';

class MealDetails extends StatelessWidget {
  static const routeName = '/meal-details';

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context).settings.arguments as String;
    print(mealId);
    final mealSelected =
        DUMMY_MEALS.firstWhere((element) => element.id == mealId);
    return Scaffold(
      appBar: AppBar(
        title: Text(mealSelected.title),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Image.network(mealSelected.imageUrl,
                  fit: BoxFit.cover, height: 300, width: double.infinity),
              SizedBox(
                height: 13,
              ),
              Text(
                'INGREDIENTS-',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              Container(
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
                height: 200,
                width: 250,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Text(mealSelected.ingredients[index]);
                  },
                  itemCount: mealSelected.ingredients.length,
                ),
              ),
              SizedBox(
                height: 13,
              ),
              Text('STEPS-',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              Container(
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
                height: 200,
                width: 250,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(index.toString()),
                        Expanded(child: Text(mealSelected.steps[index])),
                      ],
                    );
                  },
                  itemCount: mealSelected.steps.length,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
