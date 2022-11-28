void main() {
  print('OOP - 03. Getter, Setter');

  Idol redVelvet = Idol('레드벨벳', ['슬기', '웬디', '아이린', '조이', '예리']);
  print(redVelvet.fitstMember);
  redVelvet.fitstMember = '문타리';
  print(redVelvet.fitstMember);
}

class Idol {
  //? final 제거
  String name;
  List<String> members;

  //? const constructor를 사용하면 Instance를 생성할 때, const를 사용할 수 있다. (final 변수에만 사용할 수 있다.)
  Idol(this.name, this.members);

  Idol.fromList(List values)
      : this.members = values[0],
        this.name = values[1];

  void sayHello() {
    print('안녕하세요, ${this.name}입니다.');
  }

  void introduce() {
    print('저희 ${this.name} 맴버는  ${this.members}입니다.');
  }

  //? Getter (getter는 변수처럼 사용할 수 있다. 간단한 연산을 할 때 사용한다.)
  String get fitstMember {
    return this.members[0];
  }

  //? Setter (거의 사용하지 않는다. 일반 메서드를 사용하는 것이 좋다.)
  set fitstMember(String name) {
    this.members[0] = name;
  }
}
