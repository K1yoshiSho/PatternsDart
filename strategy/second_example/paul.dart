import 'jump_behavior.dart';
import 'kick_behavior.dart';
import 'tekken_fighter.dart';

class Paul extends Fighter {
  Paul(KickBehavior kickBehavior, JumpBehavior jumpBehavior)
      : super(kickBehavior, jumpBehavior);
      
  @override
  void display() {
    print("Hi, I am Paul");
  }

  @override
  void roll() {}
}
