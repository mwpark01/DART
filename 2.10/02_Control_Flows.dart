void main() {
  bool isFootball = true;
  // 1. if-else statement
  if (isFootball) {
    print('Go football');
  } else {
    print('Go Sports!');
  }

  bool isTrue = true;
  // 2. while loop: 조건이 참일 때 실행
  while (isTrue) {
    print('Hello');
    isTrue = false;
  }

  // 3. do-while loop: 조건이 참이든 거짓이든 한 번은 실행
  do {
    print('Hello 2');
  } while (isTrue);

  // 4. switch statement: 다양한 조건을 비교할 때 사용
  // case 1:
  // case 2:
  // -> 위와 같이 선언하면 값이 1이거나 2일 때 바로 아래의 print문을 실행한다.
  int myValue = 2;
  switch (myValue) {
    case 1:
      print('Monday');
    case 2:
      print('Tuesday');
    default:
      print('Error: Value not defined?');
  }

  const slash = '/';
  const star = '*';
  const plus = '+';
  const minus = '-';
  String charCode = '+';
  switch (charCode) {
    case slash || star || plus || minus:
      print('Mathematical operator');
    default:
      print('Unknown');
  }

  int numValue = 5;
  switch (numValue) {
    // 0부터 9까지의 숫자인 경우, 비교 연산자와 논리 연산자를 사용할 수 있음
    // 아래와 같이 축약 가능
    case >= 0 && <= 9:
      print('Single digit number');
    default:
      print('Unknown');
  }

  // switch문으로 return이 가능하다.
  // 화살표 모양에 유의! =>
  String smallSwitchReturn(int intValue) {
  return switch (intValue) {
    1 => "value is 1",
    2 => "value is 2",
    _ => "another value"
    };
  }

  // 5. for loop
  int maxIterations = 5;
  for (var i = 0; i < maxIterations; i++) {
    print('Iteration: $i');
  }

  // 6. forEach loop: 배열, 리스트, 맵 등의 요소를 반복할 때 사용
  List daysOfWeek = [
    'Sunday',
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday'
  ];
  // 기본 함수 사용
  daysOfWeek.forEach((day) {
    print(day);
  });
  // 람다 함수를 사용하여 간단하게 표현
  daysOfWeek.forEach((day) => print(day));
  // 함수 참조를 사용하여 간단하게 표현
  daysOfWeek.forEach(print);

  // 7. 열거형 사용하기
  print(Day.values);
  print('${Day.values[0]}');
  print(Day.values.byName('mon'));
  
  // 8. Error handling
  String name = 'Dart';
  try {
    print('Name: $name');
    // indexOf()는 문자열에서 특정 문자의 인덱스를 반환,
    // 첫번째 파라미터 name[0]은 문자열의 첫 번째 문자를 의미
    // 두번째 파라미터 name.length - (name.length +2) 는 인덱스 범위
    name.indexOf(name[0], name.length - (name.length + 2));
  } on RangeError catch (exception) {
    print('On Exception: $exception');
  } catch (exception) {
    print('Catch Exception: $exception');
  } finally {
    print('Mission completed!');
  }

}
  // 열거형 
  enum Day { sun, mon, tues }