// 변수 선언 및 업데이트
void main() {
  var name = 'vanilla';
  name = '바닐라';
}

// 변수 타입 지정
void main() {
  String name = 'vanilla';
  name = '바닐라'
}

// dynamic 타입 사용하기
void main() { 
  dynamic name = 'vanilla';
  name = '바닐라';
  if (name is String) { 
    print(name.length);
 }
} 

// null safety: nullable로 만들기
bool isEmpty(String string) => string.length == 0; // 문자열의 길이가 0인 경우 true, 그렇지 않으면 false 반환

void main() { 
  String? name = 'vanilla';
  name = null;
  if (name != null) {
    name.isNotEmpty;
}

void main() { 
  String? name = 'vanilla';
  name = null;
  name?.isNotEmpty;
}

// 수정 불가능한 변수 만들기
void main() {
  final name = 'strawberry' // can only be set once. final 뒤에 String 타입 지정할 수도 있다.
}

// 데이터를 받아 나중에 변수에 저장하기 ==> data fetching 시 유용
void main() {
  late final String name;
  // do something, go to api
  name = 'strawberry';
}

// 앱스토어에 올리기 전에 값을 알고 있다면? const 사용
void main() {
  const API = 19191929393;
}

// API로부터 가져오거나, 사용자 입력을 받는 경우 final이나 var 사용
void main() {
  final API = fetchAPI();
}
    
