// 함수 body가 없는 클래스를 추상 클래스라고 한다.
// 추상 클래스는 인스턴스를 생성할 수 없다.
// 추상 클래스는 상속을 통해 자식 클래스에서 구현되어야 한다.

// **Extends**
// *   `extends`는 *상속*을 위해 사용되는 키워드입니다[5].
// *   자식 클래스(subclass)는 부모 클래스(superclass)의 모든 속성, 변수, 함수를 상속받아 그대로 사용하거나 수정(override)하여 사용할 수 있습니다[2, 6].
// *   Dart에서는 단일 상속만 지원하므로, 하나의 클래스만 `extends`할 수 있습니다[2, 3, 5, 6, 9, 17].
// *   `extends`는 *is-a* 관계를 나타냅니다 (예: "개는 동물이다")[7].

// **Implements**

// *   `implements`는 클래스가 특정 인터페이스를 *구현*하도록 하는 키워드입니다[4, 6, 7]. Dart에서 *모든 클래스는 암묵적으로 인터페이스를 정의*하므로, 클래스를 `implements`할 수 있습니다[2].
// *   `implements`를 사용할 경우, 해당 클래스는 지정된 인터페이스(또는 클래스)의 모든 멤버(속성, 메서드)를 반드시 재정의(override)하여 구현해야 합니다[1, 5, 6, 8, 10]. 즉, *타입만 상속*받습니다[2, 10].
// *   `implements`는 다중 구현이 가능합니다(하나의 클래스가 여러 인터페이스를 `implements`할 수 있습니다)[2, 3, 5, 6].
// *   `implements`는 *can-do* 또는 *has-a* 관계를 나타냅니다 (예: "오리는 수영할 수 있다")[7].

abstract class Media {
  late String myId;
  late String myTitle;
  late String myType;

  void setMediaTitle(String mediaTitle); // 추상 메서드
  String getMediaTitle(); // 추상 메서드
  
  void setMediaType(String mediaType);
  String getMediaType();
  
  void setMediaId(String mediaId);
  String getMediaId();
}

// Media 클래스를 상속받는 Book 클래스
class Book implements Media {
  // Override annotation을 사용하여 추상 클래스의 메서드를 구현한다.
  @override
  late String myId;
  @override
  late String myTitle;
  @override
  late String myType;

  @override
  void setMediaTitle(String mediaTitle) {
    myTitle = mediaTitle;
  }
  @override
  String getMediaTitle() {
    return myTitle;
  }

  @override
  void setMediaType(String mediaType) {
    myType = mediaType;
  }
  @override
  String getMediaType() {
    return myType;
  }

  @override
  void setMediaId(String mediaId) {
    myId = mediaId;
  }
  @override
  String getMediaId() {
    return myId;
  }
}
void main() {
  var myBook = Book();
  myBook.setMediaId('1234');
  myBook.setMediaTitle('Dart Programming');
  myBook.setMediaType('Book');
  print('Media ID: ${myBook.getMediaId()}');
  print('Media Title: ${myBook.getMediaTitle()}');
  print('Media Type: ${myBook.getMediaType()}');
}


