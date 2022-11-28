void main() {
  print('OOP 07. Interface');

  BoyGroup bts = BoyGroup('BTS');
  GirlGroup redVelvet = GirlGroup('Red Velvet');

  bts.sayHello();
  redVelvet.sayHello();

  print(bts is IdolInterface);
  print(bts is BoyGroup);
  print(bts is GirlGroup);
}

//? interface keyword는 dart에 없다. abstract class를 사용하면 instance 생성을 막을 수 있다.
abstract class IdolInterface {
  String name;

  IdolInterface(this.name);

  void sayHello();
}

class BoyGroup implements IdolInterface {
  String name;

  BoyGroup(this.name);

  @override
  void sayHello() {
    print('제 이름은 $name입니다.');
  }
}

class GirlGroup implements IdolInterface {
  String name;

  GirlGroup(this.name);

  @override
  void sayHello() {
    print('제 이름은 $name입니다.');
  }
}
