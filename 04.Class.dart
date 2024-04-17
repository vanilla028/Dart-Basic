// function 내에서는 타입 명시 불필요, Class를 생성할 때는 타입 명시 필요
class Player {
  String name = 'Nana';
  int xp = 1000;
}

// 인스턴스 생성
void main() {
  var player = Player();
  player.name = 'Baba';
  print(player.name);
}

// name 수정 못하도록 고정하기
class Player {
  final String name = 'Nana';
  int xp = 1000;
}

// class 안에 method 작성
class Player {
  final String name = 'Nana';
  int xp = 1000;

  void sayInfo() {
    print("Hi my name is ${name}");
  } 
}

void main() {
  var player = Player();
  player.sayinfo();
}

// Constructor method
class Player {
  late final String name;
  late int xp;

  Player(String name, int xp) {
    this.name = name;
    this.xp = xp;
  }

  void sayInfo() {
    print("Hi my name is $name");
  }
}

  void main() {
    var player = Player("Nana", 1000);
    player.sayInfo();
    var player2 = Player("Baba", 950);
    player2.sayInfo();
}
/*
Hi my name is Nana
Hi my name is Baba
*/

// 더 간단하게 작성하기
class Player {
  final String name;
  int xp;

  Player(this.name,this.xp);

  void sayInfo() {
    print("Hi my name is $name");
  }
}

// Named Constructor Parameters
class Player {
  final String name;
  int xp;
  String team;
  int age;

  Player({
    required this.name, 
    required this.xp, 
    required this.team,
    required this.age});

  void sayInfo() {
    print("Hi my name is $name");
  }
}

void main() {
  var player = Player(
    name: "Dada",
    xp: 1000,
    team: "Green",
    age: 21,
  );
  player.sayInfo();
  var player2 = Player(
    name: "Vava",
    xp: 1000,
    team: "Pink",
    age: 25,
  );
  player2.sayInfo();
}
/*
Hi my name is Dada
Hi my name is Vava
*/

# 팀별로 설정 초기화하는 method 만들기
class Player {
  final String name;
  int xp;
  String team;
  int age;

  Player({
    required this.name, 
    required this.xp, 
    required this.team,
    required this.age});

  void sayInfo() {
    print("Hi my name is $name");

  // Player 객체 초기화(Named arguments 방식으로 작성)
  Player.setGreenteam({
    required String name, 
    required int age,
  }) : this.age = age,
       this.name = name,
       this.team = 'Green',
       this.xp = 1000;
}

void main() {
  var player = Player(
    name: "Dada",
    xp: 1000,
    team: "Green",
    age: 21,
  );
  player.sayInfo();
  var player2 = Player(
    name: "Vava",
    xp: 1000,
    team: "Pink",
    age: 25,
  );
  player2.sayInfo();
}

// Cascade Notation
    
