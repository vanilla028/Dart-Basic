class Human {
  final String name;
  Human(required this.name);
  void sayHello() {
    print("Hi my name is $name");
  }
}

enum Team { Pink, Green, Blue }

class Player extends Human {
  final Team team;
 // 생성자 함수 호출
  Player({
    required this.team,
    required String name,
    )} : super(name: name); // 부모 클래스와 상호작용

    @override
    void sayInfo(){
     super.sayInfo();
       print("and I play for ${team}");
}

void main() {
  var player = Player(team: Team.Pink, name: 'Amanda');
  player.sayInfo()
}
