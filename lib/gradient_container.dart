import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  GradientContainer(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;

  var activeDiceImage = 'asset/iamges/dice-5.png';

  void rollDice() {
    activeDiceImage = 'asset/images/dice-5.png';
  }

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'asset/images/dice-5.png',
              width: 200,
            ),
            TextButton(
              onPressed:rollDice,
              style: TextButton.styleFrom(
                padding: const EdgeInsets.only(
                  top: 20
                ),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 28),
              ),
              child: const Text('Roll Dice!'),
            ),
          ],
        ),
      ),
    );
  }
}
