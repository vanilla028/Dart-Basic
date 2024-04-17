void sayHello(String name) {
  print("Hello $name, nice to meet you!");
}

String sayHi(String name) {
  return "Hi $name, nice to meet you!";
}

void main() {
  sayHello('nana');
  print(sayHi('bubu'));
}
// Hello nana, nice to meet you!
// Hi bubu, nice to meet you!

// fat arrow syntax 사용하기
String sayHello(String name) => "Hello $name, nice to meet you!";

void main() {
  print(sayHello('nana'));
} //Hello nana, nice to meet you!

num plus(num a, num b) => a + b;
void main() {
  print(plus(1, 2));
}

// Named Parameters
String sayinfo(String name, int age, String country) {
  return "Hello $name, you are $age, and you come from $country";
}

void main() {
  print(sayinfo('Nana', 27, 'Korea'));
}

// Named Arguments: 순서에 상관없이 값 입력 OK(parameter에 중괄호 사용). default value 입력하여 값이 들어 오지 않는 경우를 대비
String sayinfo({String name = 'anonymous', int age = 99, String country = 'Paradise'}) {
  return "Hello $name, you are $age, and you come from $country";
}

void main() {
  print(sayinfo(
    age: 27,
    name: 'Nana',
    country: 'Korea'
  )
 );
}

// Named Arguments - required 사용하기
String sayinfo({
  required String name,
  required int age,
  required country,
}) {
  return "Hello $name, you are $age, and you come from $country";
}

void main() {
  print(sayinfo(
    age: 27,
    country: 'Korea',
    name: 'Nana'
  ));
}

// Optional: country만 unrequired(대괄호 사용)하고 default value 설정
String sayinfo(
  String name, 
  int age, 
  [String? country = 'Korea']
) =>
  'Hello $name, you are  $age years old from $country';
void main() {
  sayinfo('Nana', 27);
}

// 1 사용자가 null을 입력할 수 있게 하려면(방법A: if문)
String capitalizeName(String? name) {
  if (name != null) {
    return name.toUpperCase();
  }
  return 'Anonymous';
}

// 2 사용자가 null을 입력할 수 있게 하려면(방법B: fat arrow)
// '?'의 역할: 조건 ⑴ 'name != null'을 검사하고 조건이 true이면 첫 번째 표현식을 반환하고, 그렇지 않으면 두 번째 표현식을 반환한다.
String capitalizeName(String? name) =>
  name != null ? name.toUpperCase() : 'Anonymous';

void main() {
  catpitalizeName('Nana');
  capitalizeName(null);
}

// 3 2번 결과와 동일. QQ Operator: 좌항이 null이면 우항을 return
// name의 타입은 nullable string임을 명시(하지 않으면 dart complain 발생)
String capitalizeName(String? name) =>
  name?.toUpperCase() ?? 'Anonymous';

void main() {
  String? name;
  name ??= 'Nana';
  name = null;
  name ??= 'Nini';
  print(name);
}

// Typedef
typedef ListOfInts = List<int>;

ListOfInts reverseListOfNumbers(ListOfInts list) {
  var reversed = list.reversed;
  return reversed.toList();
}

void main() {
  print(reverseListOfNumbers([1, 2, 3, 4, 5]));
} // [5, 4, 3, 2, 1]
  
