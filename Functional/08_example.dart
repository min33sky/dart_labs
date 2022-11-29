void main(List<String> args) {
  /**
   * 리스트 안의 map에 대한 타입을 지정해서 사용하는 것이 좋다.
   * map을 class로 변환하는 예시
   */

  final List<Map<String, String>> idol = [
    {
      'name': 'Karina',
      'group': 'aespa',
    },
    {
      'name': 'Winter',
      'group': 'aespa',
    },
    {
      'name:': 'RM',
      'group': 'BTS',
    },
    {
      'name': 'Jin',
      'group': 'BTS',
    }
  ];

  print(idol);

  final parsedIdol = idol
      .map((member) =>
          Member(name: member['name'] ?? '이름', group: member['group'] ?? '그룹'))
      .toList();

  print(parsedIdol);

  for (Member member in parsedIdol) {
    print(member.name);
    print(member.group);
  }

  final aespa = parsedIdol.where((member) => member.group == 'aespa').toList();
  print(aespa);
}

class Member {
  final String name;
  final String group;

  Member({
    required this.name,
    required this.group,
  });

  //? toString()을 오버라이딩해서 사용하면 좋다. (기본 출력값: Instance of 'Member')
  @override
  String toString() {
    return 'Member(name: $name, group: $group)';
  }
}
