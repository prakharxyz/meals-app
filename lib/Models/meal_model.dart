class MealModel {
  final String id;
  final String imageUrl;
  final List<String> ingredients;
  final List<String> steps;
  final List<String> categories;
  final String title;
  final Affordability affordability;
  final Complexity complexity;
  final int duration;
  final bool isGlutenFree;
  final bool isVegan;
  final bool isVegetarian;
  final bool isLactoseFree;

  const MealModel(
      {this.id,
      this.title,
      this.imageUrl,
      this.ingredients,
      this.steps,
      this.categories,
      this.affordability,
      this.complexity,
      this.duration,
      this.isGlutenFree,
      this.isLactoseFree,
      this.isVegan,
      this.isVegetarian});

  String get getComplexity {
    switch (complexity) {
      case Complexity.Easy:
        return 'Easy';
        break;
      case Complexity.Challenging:
        return 'Challenging';
        break;
      case Complexity.Hard:
        return 'Hard';
        break;
      default:
        return 'Unavailable';
    }
  }

  String get getAffordability {
    switch (affordability) {
      case Affordability.Affordable:
        return 'Affordable';
        break;
      case Affordability.Costly:
        return 'Costly';
        break;
      case Affordability.Luxurious:
        return 'Luxurious';
        break;
      default:
        return 'Unavailable';
    }
  }
}

enum Affordability { Affordable, Costly, Luxurious }
enum Complexity { Easy, Challenging, Hard }
