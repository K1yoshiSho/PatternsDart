void main() {
  final strategy = Strategy();
  strategy.setAlgorithm(MagicAttacks.ice);
  strategy.attack();
  strategy.setAlgorithm(MagicAttacks.fire);
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

  MagicAttacks? algorithm;

  Map<MagicAttacks, Magic> map = {
    MagicAttacks.fire: FireAttack(),
    MagicAttacks.ice: IceAttack(),
  };

  void setAlgorithm(MagicAttacks algorithm) {
    this.algorithm = algorithm;
  }

  void attack() async {
    map[algorithm]?.attack();
  }
}