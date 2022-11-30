void main(List<String> args) {
  //? Future의 await 처럼 순서를 지켜서 실행해보자.
  playAllStream().listen((val) {
    print('val: $val');
  });
}

Stream<int> playAllStream() async* {
  yield* calculate(1);
  yield* calculate(1000);
}

// 일반 함수라면 return을 할 때 함수가 종료가 되버린다.
// yield를 사용하면 함수가 종료되지 않고 계속 실행된다.
Stream<int> calculate(int number) async* {
  for (int i = 0; i < 5; i++) {
    yield i * number;
  }
}
