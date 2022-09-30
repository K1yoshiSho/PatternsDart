import 'coffee.dart';
import 'coffee_decorator.dart';
import 'ingredient.dart';

var coffee = Ingredient("coffee", .20);
var milk = Ingredient("milk", .4);
var sugar = Ingredient("sugar", .2);

void main() {
  var coffee = Coffee();
  var starbucksCoffee = StarbucksCoffeeDecorator();

  print("Coffee contains ${coffee.ingredients}. It costs \$${coffee.cost}");
  print("Starbucks coffee contains ${starbucksCoffee.ingredients}. It costs \{starbucksCoffee.cost}");
}
