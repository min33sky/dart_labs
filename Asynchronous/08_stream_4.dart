void main(List<String> args) {
  calculate(2).listen((val) {
    print('val: $val');
  });

  calculate(100).listen((val) {
    print('val: $val');
  });
}

// 일반 함수라면 return을 할 때 함수가 종료가 되버린다.
// yield를 사용하면 함수가 종료되지 않고 계속 실행된다.
Stream<int> calculate(int number) async* {
  for (int i = 0; i < 5; i++) {
    yield i * number;
  }
}
