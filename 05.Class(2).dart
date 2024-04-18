// 앱 데이터를 받아와서 구조화하기
class Player {
  final String name;
  int xp;
  String team;
  
  // 초기화 메서드
  Player.fromJson(Map<String, dynamic> playerJson)
      : name = playerJson['name'],
        xp = playerJson['xp'],
        team = playerJson['team'];

  void sayInfo() {
    print("Hi my name is $name");
  }
}
    
void main() {
  var apiData = [
    {
      "name": "Nana",
      "team": "Green",
      "xp": 1000,
    },
    {
      "name": "Baba",
      "team": "Pink",
      "xp": 950,
    },
    {
      "name": "Kuku",
      "team": "Blue",
      "xp": 980,
    },
  ];

  apiData.forEach((playerJson) {
    var player = Player.fromJson(playerJson);
    player.sayInfo();
  });
  }
/*
실행 결과
Hi my name is Nana
Hi my name is Baba
Hi my name is Kuku
*/
    
