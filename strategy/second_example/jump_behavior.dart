abstract class JumpBehavior {
  void jump();
}

class LongJump implements JumpBehavior {
  @override
  void jump() {
    print("This is a Long Jump");
  }
}

class ShortJump implements JumpBehavior {
  @override
  void jump() {
    print("This is a Short Jump");
  }
}
