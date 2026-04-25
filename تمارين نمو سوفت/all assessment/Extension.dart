extension IntListExt on List<int> {
  int sumAll() => reduce((a, b) => a + b);

  String toDescription() => "Length: ${length}";
}