void main(List<String> args) {
  Map<String, String> harryPotter = {
    'Harry Potter': '해리 포터',
    'Hermione Granger': '헤르미온느 그레인저',
    'Ron Weasley': '론 위즐리',
  };

  //? Map을 map 함수를 통해 변형할 수 있다.
  final result = harryPotter.map((key, value) =>
      MapEntry('Harry Potter Character $key', '해리포터 캐릭터 $value'));

  print(harryPotter);
  print(result);

  //? Map의 Key와 value를 활용하기
  final keys = harryPotter.keys.map((key) => 'HPC $key').toList();
  final values = harryPotter.values.map((value) => 'HPC $value').toList();

  print(keys);
  print(values);
}
