void main() {
  print('OOP 08. Generic');

  Lecture<int, String> lecture = Lecture(1, 'Dart');

  lecture.printIdType();
  lecture.printNameType();
}

// generic - 타입을 외부에서 받을 때 사용
class Lecture<T, X> {
  final T id;
  final X name;

  Lecture(this.id, this.name);

  void printIdType() {
    print('id의 타입은 ${id.runtimeType}입니다.');
  }

  void printNameType() {
    print('name의 타입은 ${name.runtimeType}입니다.');
  }
}
