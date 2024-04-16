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

// Named Arguments: 순서에 상관없이 값 입력 OK. default value 입력하여 값이 들어 오지 않는 경우를 대비
String sayinfo({String name = 'anonimous', int age = 99, String country = 'Paradise'}) {
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
