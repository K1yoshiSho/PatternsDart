void main() {
  final strategy = Strategy();
  strategy.setAttack(MagicAttacks.ice);
  strategy.attack();
  strategy.setAttack(MagicAttacks.fire);
  strategy.attack();
}

abstract class Magic {
  void attack();
}

enum MagicAttacks {
  fire,
  ice,
}

class FireAttack implements Magic {
  @override
  void attack() => print('Fire! Woof, woof, woof... boom!');
}

class IceAttack implements Magic {
  @override
  void attack() => print('Ice! Vhh-vhh-vhh-vhh... poke!');
}

class Strategy {

  MagicAttacks? magicAttack;

  Map<MagicAttacks, Magic> map = {
    MagicAttacks.fire: FireAttack(),
    MagicAttacks.ice: IceAttack(),
  };

  void setAttack(MagicAttacks magicAttack) {
    this.magicAttack = magicAttack;
  }

  void attack() async {
    map[magicAttack]?.attack();
  }
}
