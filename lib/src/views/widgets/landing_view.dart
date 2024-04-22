import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:karindam/src/views/widgets/name_intro.dart';

class LandingView extends StatelessWidget {
  const LandingView({super.key});

  Widget _blurWrapper({Widget? child}) {
    return ClipRect(
      clipBehavior: Clip.antiAlias,
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
        child: Container(
          height: double.maxFinite,
          width: double.maxFinite,
          padding: const EdgeInsets.all(52.0),
          color: Colors.black.withOpacity(0.7),
          child: SafeArea(child: child ?? const SizedBox.expand()),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height,
      width: size.width,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/arindam.jpg",
            fit: BoxFit.cover,
          ),
          _blurWrapper(
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                NameIntro(),
                Text(
                  "Engineering Mobile Experiences with Precision and Passion",
                  textScaler: TextScaler.linear(4.0),
                  style: TextStyle(
                    color: Colors.lightBlue,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
