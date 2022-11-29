void main(List<String> args) {
  List<int> numbers = [1, 3, 5, 7, 9];

  final result = numbers.fold<int>(0, (prev, next) => prev + next);

  print(result);

  List<String> words = ['안녕하세요', '저는', '한국인입니다.'];

  final sentence =
      words.fold<String>('', (value, element) => value + element + ' ');

  print(sentence);

  //? fold는 선언 타입과 리턴 타입이 달라도 된다.
  // words.reduce((prev, next) => prev.length + next.length); //! 에러 발생 (int !== String)
  final count = words.fold<int>(0, (prev, next) => prev + next.length);
  print('count: $count');
}
