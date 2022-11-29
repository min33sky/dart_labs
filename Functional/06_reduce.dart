void main(List<String> args) {
  List<int> numbers = [1, 3, 5, 7, 9];

  final result = numbers.reduce((prev, next) => prev + next);

  print(result);

  List<String> words = ['안녕하세요', '저는', '한국인입니다.'];

  final sentence = words.reduce((value, element) => value + ' ' + element);

  print(sentence);

  //? reduce는 선언 타입과 리턴 타입이 같아야 한다.
  // words.reduce((prev, next) => prev.length + next.length); //! 에러 발생 (int !== String)
}
