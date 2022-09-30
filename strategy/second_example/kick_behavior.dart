abstract class KickBehavior {
  void kick();
}

class LightningKick implements KickBehavior {
  @override
  void kick() {
    print("This is a Lightning Kick");
  }
}

class TornadoKick implements KickBehavior {
  @override
  void kick() {
    print("This is a Tornado Kick");
  }
}
