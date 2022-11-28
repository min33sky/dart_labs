void main() {
  print('OOP 05. Override');

  TimesTwo tt = TimesTwo(3);

  print(tt.calculate());

  TimesFour tf = TimesFour(3);

  print(tf.calculate());
}

//? method = function (class 내부에 있는 함수)
//? override = 덮어쓰다 (우선시하다)
class TimesTwo {
  final int number;

  TimesTwo(this.number);

  int calculate() => this.number * 2;
}

class TimesFour extends TimesTwo {
  TimesFour(int number) : super(number);

  // @override
  // int calculate() => super.number * 4;

  @override
  int calculate() => super.calculate() * 2;
}
