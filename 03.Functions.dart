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
