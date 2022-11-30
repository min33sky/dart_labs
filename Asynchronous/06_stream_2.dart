import 'dart:async';

void main(List<String> args) {
  final controller = StreamController();
  final stream = controller.stream
      .asBroadcastStream(); // 'asBroadcastStream':  Stream을 여러번 사용할 수 있게 해준다.

  final streamListener1 = stream.listen((data) {
    print('stream1 : $data');
  });

  final streamListener2 = stream.listen((data) {
    print('stream2 : $data');
  });

  controller.sink.add('1');
  controller.sink.add('2');
  controller.sink.add('3');
  controller.sink.add('4');
  controller.sink.add('5');
}
