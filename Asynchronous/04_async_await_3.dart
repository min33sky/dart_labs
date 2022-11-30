Future<void> main(List<String> args) async {
  // Future - 미래
  // 미래에 받아올 값
  Future<String> name = Future.value('파리');
  Future<int> number = Future.value(100);
  Future<bool> isTrue = Future.value(true);

  final result1 = await addNumber(1, 2);
  final result2 = await addNumber(10, 20);

  print('result1: $result1');
  print('result2: $result2');
  print('result1 + result2: ${result1 + result2}');
}

//? async, await은 Future를 리턴할 때만 사용할 수 있다.
Future<int> addNumber(int num1, int num2) async {
  print('계산 시작: $num1 + $num2');

  // 서버 시뮬레이션
  await Future.delayed(Duration(seconds: 2), () {
    print('계산 완료: $num1 + $num2 = ${num1 + num2}');
  });

  print('함수 완료');

  return num1 + num2;
}
