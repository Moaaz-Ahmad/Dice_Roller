import 'package:flutter/material.dart';
import 'package:flutter_application_1/dice_roller.dart';
var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;
class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colors,{super.key});
  final List<Color> colors;
  @override
  Widget build(BuildContext context) {
    return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: colors,
              begin: startAlignment,
              end: endAlignment
            )
          ),
          child:const Center(
            child: DiceRoller(),
          ),
        );
  }
}