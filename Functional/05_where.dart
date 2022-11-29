void main(List<String> args) {
  List<Map<String, String>> idol = [
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

  /**
   *? where: 조건에 맞는 요소만 추출
   */

  final aespa = idol.where((member) => member['group'] == 'aespa').toList();
  final bts = idol.where((member) => member['group'] == 'BTS').toList();

  print(aespa);
  print(bts);
}
