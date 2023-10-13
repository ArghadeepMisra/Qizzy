class Datamodel {
  const Datamodel(this.qtext, this.qanswers);

  final String qtext;
  final List<String> qanswers;

  List<String> shuffledList() {
    final shuffledList = List.of(qanswers);
    shuffledList.shuffle();
    return shuffledList;
  }
}
