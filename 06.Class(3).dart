// Cascade Notation
class Player {
  String name;
  int xp;
  String team;

  Player({required this.name, required this.xp, required this.team});

  void sayInfo() {
    print("Hi my name is $name");
  }
}

// 1
void main() {
  var nana = Player(name: 'Nana', xp: 1000, team: 'Green');
  nana.name = 'Nunu';
  nana.xp = 1000000;
  nana.team = 'Green';
}

// 2 1을 다음과 같이 단축하여 쓸 수 있다. '.' refers to 'nana'
void main() {
  var nana = Player(name: 'Nana', xp: 1000, team: 'Green');
  ..name = 'Nunu'
  ..xp = 1000000
  ..team = 'Green'
  ..sayInfo();
}

// Enums: 개발자의 실수를 줄여주는 기능
enum Team { Green, Pink, Blue } // 문자열이든, 아니든 신경쓰지 않아도 OK
enum Level { beginner medium, pro }

class Player {
  String name;
  Level level;
  int xp;
  Team team; // team은 이제 String 타입이 아니고 Team으로 지정

  Player({
    required this.name,
    required this.xp,
    required this.team,
  });

  void sayInfo() {
    print("Hello my name is $name")
    }
}
void main() {
  var nana = Player(name: 'Nana', xp: 1000, level: Level.pro, team: Team.Green);
  var baba = 'Baba'
  ..name = 'bubu'
  ..xp = 1000000
  ..xplevel = Level.pro
  ..team = Team.Green
  ..sayInfo();
}
    
// Abstract Class: show blueprint
abstract class Human {
  void walk();
}

enum Team { Green, Pink, Blue }
enum Level { beginner medium, pro }

class Player extends Human {
  String name; 
  Level level; 
  int xp; Team team;
  
  Player({
    required this.name,
    required this.xp,
    required this.team,
  });

  void walk() {
    print("I'm walking");

  void sayInfo() {
    print("Hi my name is $name");  
}

class Coach extends Human {
  void walk() {
    print("The coach is walking");
  }
}
    
void main() {
  var nana = Player(name: 'Nana', xp: 1000, level: Level.pro, team: Team.Green);
  var baba = 'Baba'
  ..name = 'bubu'
  ..xp = 1000000
  ..xplevel = Level.pro
  ..team = Team.Green
  ..sayInfo();
}
    
