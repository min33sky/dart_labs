void main() {
  print('OOP - 02. final, const');
  //? const 키워드를 사용하면, 컴파일 시점에 값을 할당해야 한다. (예: DateTime.now()는 컴파일 시점에 값을 할당할 수 없다.)
  //? const constructor를 사용하면, constructor를 호출할 때 매개변수가 같다면 같은 인스턴스가 반환된다.

  Idol redVelvet = Idol('레드벨벳', ['슬기', '웬디', '아이린', '조이', '예리']);
  Idol redVelvet2 = Idol('레드벨벳', ['슬기', '웬디', '아이린', '조이', '예리']);

  print(redVelvet == redVelvet2); // false

  Idol blackPink = const Idol('블랙핑크', ['제니', '지수', '로제', '리사']);
  Idol blackPink2 = const Idol('블랙핑크', ['제니', '지수', '로제', '리사']);

  print(blackPink == blackPink2); // true
}

class Idol {
  final String name;
  final List<String> members;

  //? const constructor를 사용하면 Instance를 생성할 때, const를 사용할 수 있다. (final 변수에만 사용할 수 있다.)
  const Idol(this.name, this.members);

  Idol.fromList(List values)
      : this.members = values[0],
        this.name = values[1];

  void sayHello() {
    print('안녕하세요, ${this.name}입니다.');
  }

  void introduce() {
    print('저희 ${this.name} 맴버는  ${this.members}입니다.');
  }
}
