import 'package:flutter/material.dart';
import 'package:karindam/src/common/constants.dart';
import 'package:karindam/src/core/models/social.dart';
import 'package:karindam/src/views/widgets/landing_view.dart';
import 'package:url_launcher/url_launcher_string.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: Constants.socialLinks
            .map((e) => e.toSocial)
            .map((s) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FloatingActionButton(
                    onPressed: () => launchUrlString(s.link),
                    backgroundColor: Constants.kPurple,
                    child: Image.asset(
                      s.img,
                      height: 32,
                      width: 32,
                    ),
                  ),
                ))
            .toList(),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            LandingView(),
          ],
        ),
      ),
    );
  }
}
