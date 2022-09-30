import 'beverage.dart';
import 'coffee.dart';

class StarbucksCoffeeDecorator implements Beverage {
  final Beverage _coffee = Coffee();
  
  @override
  double get cost => _coffee.cost * 5;
  
  @override
  String get ingredients => _coffee.ingredients;
}