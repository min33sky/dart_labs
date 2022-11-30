void main(List<String> args) {
  // Future - 미래
  // 미래에 받아올 값
  Future<String> name = Future.value('파리');
  Future<int> number = Future.value(100);
  Future<bool> isTrue = Future.value(true);

  addNumber(1, 2);
  addNumber(10, 20);
}

void addNumber(int num1, int num2) {
  print('계산 시작: $num1 + $num2');

  // 서버 시뮬레이션
  Future.delayed(Duration(seconds: 2), () {
    print('계산 완료: $num1 + $num2 = ${num1 + num2}');
  });

  print('함수 완료');
}
