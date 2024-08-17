class Country {
  final String code;
  final String name;
  final String phoneCode;

  Country({required this.code, required this.name, required this.phoneCode});

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Country &&
          runtimeType == other.runtimeType &&
          code == other.code &&
          name == other.name &&
          phoneCode == other.phoneCode;

  @override
  int get hashCode => code.hashCode ^ name.hashCode ^ phoneCode.hashCode;
}
