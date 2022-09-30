import 'jump_behavior.dart';
import 'kick_behavior.dart';
import 'paul.dart';
import 'tekken_fighter.dart';

main() {
  JumpBehavior shortJump = ShortJump();
  JumpBehavior longJump = LongJump();
  KickBehavior tornadoKick = TornadoKick();
  LightningKick lightningKick = LightningKick();
  Fighter paul = Paul(tornadoKick, shortJump);
  paul.display();
  paul.punch();
  paul.kick();
  paul.jump();

  paul.setJumpStrategy(longJump);
  paul.setKickStrategy(lightningKick);
  paul.jump();
}
