void main() {
  // string 타입의 리스트 선언
  List<String> months = [
    'January', 
    'February', 
    'March',
  ];

  // 리스트에 요소 추가
  months.add('April'); 

  // 리스트의 모든 요소 출력
  // forEach의 함수 파라미터에 print라는 함수를 받음.
  months.forEach(print);

  // 리스트의 첫 번째 요소 출력
  print(months[0]); // January 출력

  // 리스트의 길이 확인
  print(months.length); // 4 출력

  // List advanced
  List<int> numbers = [1, 2, 3, 4, 5];
  // 특정 인덱스에 요소 추가
  numbers.insert(2, 10); // 1, 2, 10, 3, 4, 5
  // 값 제거
  numbers.remove(4); // 1, 2, 10, 3, 5
  // 값 제거 (인덱스 사용)
  numbers.removeAt(2); // 1, 2, 3, 5

  // 조건에 따라 필터링
  // iterable 타입(반복 조건) -> 리스트 타입
  List<int> evenNumbers = numbers.where((number) => number % 2 == 0).toList();
  print(evenNumbers);

  // 각 요소를 제곱하여 새로운 리스트 생성
  List<int> squaredNumbers = numbers.map((number) => number * number).toList();
  print(squaredNumbers); // 1, 4, 9, 25 출력

  Map<String, dynamic> filmStarWars = {
    'title': 'Star Wars',
    'director': 'George Lucas',
    'year': 1977,
  };

  Map<String, dynamic> filmHarryPotter = {
    'title': 'Harry Potter',
    'director': 'J.K. Rowling',
    'year': 2001,
  };

  Map<String, dynamic> filmLordOfTheRings = {
    'title': 'Lord of the Rings',
    'director': 'Peter Jackson',
    'year': 2001,
  };

  List listFilms = [filmStarWars, filmHarryPotter, filmLordOfTheRings];
  
  // dynamic -> swift의 optional any와 비슷한 역할
  // 외부 데이터 소스를 사용할 때 타입불일치로 인한 오류를 처리하기 위해 사용 -> 유연한 대처 가능
  Map<String, dynamic> currentFilm = listFilms[0];

  var currentFilmTitle = currentFilm['title'];
  print(currentFilmTitle); // Star Wars 출력

  Map<int, String> mapMonth = {
    1: 'January',
    2: 'February',
    3: 'March',
  };

  mapMonth[4] = 'April';
  mapMonth.forEach((key, value) {
    print('$key: $value');
  });

  // 특정 키 해당하는 값 출력
  print(mapMonth[1]); // January 출력

  // 맵 심화
  Map<String, int> scores = {
    'Alice': 100,
    'Bob': 90,
    'Charlie': 80,
  };

  // 키 존재 여부 확인
  print(scores.containsKey('Alice')); // true 출력

  // 값 존재 여부 확인
  print(scores.containsValue(90)); // true 출력

  // 키-값 쌍 제거
  scores.remove('Charlie');
  print(scores); // Alice, Bob 출력

  // 점수를 5점씩 증가시킨 새로운 맵 생성
  Map<String, int> updatedScores = scores.map((key, value) => MapEntry(key, value + 5));
  print(updatedScores); // Alice: 105, Bob: 95 출력
}