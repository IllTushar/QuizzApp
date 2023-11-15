class ModelClass {
  const ModelClass(this.question, this.answer);

  final String question;
  final List<String> answer;

  List<String> getShuffle() {
    final newShuffeledList = List.of(answer);
    newShuffeledList.shuffle();
    return newShuffeledList;
  }
}
