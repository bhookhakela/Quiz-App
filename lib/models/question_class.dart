class QuizQuestion {
  QuizQuestion(this.question, this.answer);
  String question;
  List<String> answer;
  List<String> shuffle_options() {
    List<String> temp = [];
    temp.addAll(answer);
    temp.shuffle();
    return temp;
  }
}
