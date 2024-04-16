// 객체 지향 언어, Dart의 Data Types
void main() {
  String name = 'Americano';
  bool water = true;
  int cups = 2;
  double money = 3.50;
  num x = 3500;
  x = 3.5; // type 'num' could be integer or double
}

// 리스트 만들기 Two ways
void main() {
  var nummbers = [1, 2, 3, 4, 5];
}

void main() {
  List<int> numbers = [1, 2, 3, 4, 5];
}

void main() {
  List<int> numbers = [1, 2, 3, 4, 5,]; // comma => formatted by multilines
  numbers.add(6);
  numbers.addAll([7, 8, 9])
  numbers.first;
  numbers.last;
}

void main() {
  var eight = true;
  var num_list = [
  2, 
  4, 
  6,
  if (eight) 8, // eight이 true이면 리스트에 8을 넣는다. ==> collection if 기능
 ];
}

// 위와 동일한 코드(위의 코드가 더 간편)
void main() {
  var eight = true;
  var num_list = [
  2, 
  4, 
  6,
 ];
 if (eight) {
   num_list.add(8);
 }
}

// String interpolation
void main() {
  var name = 'vanilla';
  var count = 0;
  var greeting = "Hello, welcome to my GitHub, I am $name. This is your ${count + 1}st visiting!";
  print(greeting);
  // Hello, welcome to my GitHub, I am vanilla. This is your 1st visiting!
}

// collection for 사용하기
void main() {
  var oldMembers = ['nini', 'dong'];
  var newMembers = [
    'loy',
    'lang',
    'lynn',
    for (var member in oldMembers) "👋 $member",
    ];
  print(newMembers);
  // [loy, lang, lynn, 👋 nini, 👋 dong]
}  

// map key: value 구조
void main() {
  var player = {
    'name': 'vanilla',
    'xp': '100',
    'skill': 'magic, shooting',
  };
}

void main() {
  Map<int, bool> plater = {
    1: true,
    2: false,
    3: true,
  };
}

void main() {
  Map<List<int>, bool> player = {
    [1, 2, 3]: true, 
    [2, 3, 4,]: false,
  };
  print(player.values); // (true, false)
}

void main() {
  List<Map<String, Object>> players = [
    {
      'name': 'vanilla028',
      'xp': '100',
      'skill': 'magic, shooting',
    },
    {
      'name': 'strawberry03',
      'xp': '98',
      'skill': 'magic',
    },
    {
      'name': 'melon127',
      'xp': '100',
      'skill': 'running, hiding',
    },
  ];
  for (var player in players) {
    print('Name: ${player['name']}, XP: ${player['xp']}, Skill: ${player['skill']}');  
  }
}
/*
출력 결과)
Name: vanilla028, XP: 100, Skill: magic, shooting
Name: strawberry03, XP: 98, Skill: magic
Name: melon127, XP: 100, Skill: running, hiding
*/

// Set
void main() {
  var numbers = {1, 2, 3, 4};
  Set<int> numbers = {1, 2, 3, 4};
  numbers.add(1); // 이미 1이 있으므로 추가되지 않는다.
}
