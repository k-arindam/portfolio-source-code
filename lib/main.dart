import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:karindam/firebase_options.dart';
import 'package:karindam/src/common/constants.dart';
import 'package:karindam/src/core/app_bindings.dart';
import 'package:karindam/src/core/routes/app_routes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const KArindam());
}

class KArindam extends StatefulWidget {
  const KArindam({super.key});

  @override
  State<KArindam> createState() => _KArindamState();
}

class _KArindamState extends State<KArindam> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: AppBindings(),
      initialRoute: AppRoutes.home,
      onGenerateRoute: AppRoutes.generateRoutes,
      debugShowCheckedModeBanner: false,
      title: Constants.kAppName,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "Tilt_Neon",
      ),
    );
  }
}
