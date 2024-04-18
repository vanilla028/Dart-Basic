class Strong {
  final double strenghtLevel = 1500.99;
}
class QuickRunner {
  void runQuick() {
    print("Run, run, run!");
  }
}
class Tall {
  final double height = 1.99;

enum Team { Pink, Green, Blue }
// 다른 클래스의 property와 method를 긁어오기(Mixin from 생성자가 없는 클래스)
class Player with Strong, QuickRunner, Tall {
  final Team team;

  Player({
    required this.team,
  });
}
  class Horse with Strong, QuickRunner {}
  class Kid with QuickRunner {}
    

  
