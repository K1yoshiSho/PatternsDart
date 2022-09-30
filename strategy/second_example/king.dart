import 'jump_behavior.dart';
import 'kick_behavior.dart';
import 'tekken_fighter.dart';

class King extends Fighter {
  King(KickBehavior kickBehavior, JumpBehavior jumpBehavior)
      : super(kickBehavior, jumpBehavior);
  @override
  void display() {
    print("Hi, I am King");
  }

  @override
  void roll() {}
}
