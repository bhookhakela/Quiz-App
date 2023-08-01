import "package:quiz_app/data/questions.dart";

class QuizQuestion {
  int score = 0;
  List<String>? selected_ans;
  QuizQuestion(this.question, this.answer);
  String question;
  List<String> answer;
  List<String> shuffle_options() {
    List<String> temp = answer;
    temp.shuffle();
    return temp;
  }

  void check_ans() {
    for (int i = 0; i < (data.length); i++) {
      if (selected_ans?[i] == answer[0]) {
        score++;
      }
    }
  }
}
