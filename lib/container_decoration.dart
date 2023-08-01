import 'package:flutter/material.dart';
import 'package:quiz_app/Home.dart';
import 'package:quiz_app/final_page_decider.dart';

class container_decoration extends StatefulWidget {
  const container_decoration({super.key});

  @override
  State<container_decoration> createState() => _container_decorationState();
}

class _container_decorationState extends State<container_decoration> {
  var active_state = 'home-screen';
  //parent widget having both home and questions as its children
  void changeScreen() {
    setState(() {
      active_state = 'question-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget currentScreen = home(changeScreen);
    if (active_state == 'question-screen') {
      currentScreen = const FinalPageDecide();
    }
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 69, 17, 132),
            Color.fromARGB(255, 56, 2, 65)
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: currentScreen,
    );
  }
}
