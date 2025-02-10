void main() {
  // 1. 변수 선언 및 초기화

  // 정수형 변수 선언 및 초기화
  int number = 35;

  // 실수형 변수 선언 및 초기화
  double price = 2.9929;

  // boolean 변수 선언 및 초기화
  bool isValid = true;

  // String 변수 선언 및 초기화
  String message = "Hello Dart!";

  // 각 변수의 값을 출력
  print(number);
  print(price);
  print(isValid);
  print(message);

  // 2. 다양한 타입의 출력

  // 문자열 출력
  print('Hello World!');

  // 숫자 출력
  print(10);

  // String 변수를 사용하여 문자열 출력
  String name = "Dart";
  print('Welcome to $name'); // 여러 개 변수 선언 시 print('Welcome to ${name + '님'}')
                                    // 대괄호 안에서 숫자 계산도 가능
  // 여러 줄 문자열 출력
  print("""
    This is a 
      multiline string
    example
  """);

  // 3. 상수 선언 및 초기화
  
  const int daysInWeek = 7;

  final DateTime now = DateTime.now();

  // nullable 타입 -> swift에서 Optional
  // 값으로 null이 들어갈 수 있다.
  int? nullableNumber;
  print(nullableNumber);

  nullableNumber = 42;
  print(nullableNumber);

  print('There are $daysInWeek days in a week');
  print('Current time is $now');

  // 4. 타입 추론

  var varName = 'John'; // 문자열로 추론

  varName = 'David';

  // varName = 10; 문자열로 추론된 var 는 다른 타입을 가질 수 없다.

  var a = 1; // int 로 추론 됨

  print(varName);
  print(a);
}