import 'package:flutter/material.dart';
import 'package:karindam/src/common/constants.dart';

class NameIntro extends StatelessWidget {
  const NameIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
      decoration: BoxDecoration(
        color: Constants.kPurple.withOpacity(0.3),
        borderRadius: BorderRadius.circular(18.0),
        border: Border.all(
          color: Constants.kPurple,
          width: 3,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "Hi, I'm Arindam Karmakar",
            textScaler: TextScaler.linear(2.0),
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Image.asset(
              "assets/images/greet.png",
              height: 30,
              width: 30,
            ),
          ),
        ],
      ),
    );
  }
}
