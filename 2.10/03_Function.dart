// void main() {
//   // main function
//   // 실습: 함수 선언 및 호출
//   // 함수 호출
//   getCurrentDateTime();
//   var hourDifference = -7;
//   getCurrentDateTimeWithDifference(hourDifference);

//   printGreetingNamed();
//   printGreetingNamed(personName: "Rich");
//   printGreetingNamed(personName: "Mary", clientId: 001);

//   // 익명 함수
//   int value = 5;
  
//   // 5. 화살표 함수
//   int ex1Squared(num1) => num1 * num1;
//   int ex1Cubed(num1) => num1 * num1 * num1;
  
//   // 6. 중괄호 일반 함수
//   int ex2Squared(num2) {
//     return num2 * num2;
//   }
//   int ex2Cubed(num2) {
//     return num2 * num2 * num2;
//   }
  
//   print('EX1-Squared: ${ex1Squared(value)}');
//   print('EX1-Cubed: ${ex1Cubed(value)}');
//   print('EX2-Squared: ${ex2Squared(value)}');
//   print('EX2-Cubed: ${ex2Cubed(value)}');
// }

// 1. 함수 선언
void getCurrentDateTime() {
  // 현재 시간을 가져오는 함수
  var currentTime = DateTime.now();
  print('Current time: $currentTime');
}

// 2. 파라미터가 있는 함수 선언
void getCurrentDateTimeWithDifference(int hourDifference) {
  var timeNow = DateTime.now();
  // 시간 차이를 계산
  var timeDifference = timeNow.add(Duration(hours: hourDifference));
  print('Current time: $timeNow');
  print('Time with Difference: $timeDifference');
}

// 3. 파라미터의 기본 값이 설정된 함수 선언
void printGreetingNamed({String personName = 'Stranger', int clientId = 999}) {
  if (personName.contains('Stranger')) {
    print('Employee: $clientId, Stranger danger!');
  } else {
    print('Employee: $clientId, Hello $personName');
  }
}

// 4. 반환 값(리턴 값)이 있는 함수
DateTime getTimeDifference(int hourDifference) {
  DateTime timeNow = DateTime.now();
  DateTime timeDifference = timeNow.add(Duration(hours: hourDifference));
  return timeDifference;
}

void main() async {
  // Future 반환 값이 있는 함수 호출
  int myDelay = 5;
  print('Hello');
  var customDelay = await _customDelay(myDelay);
  var customText = myDelay == customDelay ? 'Success' : 'Failed';
  print('Its $customDelay - $customText');
}

// 함수 선언: Future 반환 값이 있는 함수
Future<int> _customDelay(int delay) async {
  try {
    await Future.delayed(Duration(seconds: delay));
    return delay;
  } catch (e) {
    print(e);
    return -1;
  }
}