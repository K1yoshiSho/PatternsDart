import 'jump_behavior.dart';
import 'kick_behavior.dart';

abstract class Fighter {
  KickBehavior kickBehavior;
  JumpBehavior jumpBehavior;
  Fighter(this.kickBehavior, this.jumpBehavior);

  setKickStrategy(KickBehavior kickBehavior) {
    this.kickBehavior = kickBehavior;
  }

  setJumpStrategy(JumpBehavior jumpBehavior) {
    this.jumpBehavior = jumpBehavior;
  }

  void kick() {
    kickBehavior.kick();
  }

  void jump() {
    jumpBehavior.jump();
  }

  void display();

  void roll() {
    print("Roll");
  }

  void punch() {
    print("Punch");
  }
}
