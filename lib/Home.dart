import 'package:flutter/material.dart';

class home extends StatelessWidget {
  home(this.changeScreen1,
      {super.key}); //receivng the funtion pointer from parent widget as an argument and storing it in changeScreen1
  final void Function() changeScreen1; //declaring the function pointer
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Image(
            image: AssetImage("assets/images/quiz-logo.png"),
            width: 290,
            color: Color.fromARGB(71, 255, 255, 255),
          ), //we can use color picker to adjust transparency of a color
          const SizedBox(
            height: 80,
          ),
          const Text(
            "Welcome to the Quiz App",
            style: TextStyle(
              fontSize: 23,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                width: 20,
              ),
              ElevatedButton.icon(
                onPressed:
                    changeScreen1, //using the function received from the parent widget in onpressed
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 56, 2, 65),
                ),
                icon: const Icon(Icons.arrow_right_alt_sharp),
                label: const Text(
                  "Start Quiz",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
