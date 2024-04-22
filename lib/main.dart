import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:karindam/firebase_options.dart';
import 'package:karindam/src/common/constants.dart';
import 'package:karindam/src/core/app_bindings.dart';
import 'package:karindam/src/core/routes/app_routes.dart';
import 'package:responsive_framework/responsive_framework.dart';

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

  static void restart(BuildContext context) =>
      context.findAncestorStateOfType<_KArindamState>()?.restartApp();
}

class _KArindamState extends State<KArindam> {
  Key _sessionKey = UniqueKey();

  void restartApp() {
    setState(() {
      _sessionKey = UniqueKey();
    });
  }

  @override
  Widget build(BuildContext context) {
    return KeyedSubtree(
      key: _sessionKey,
      child: GetMaterialApp(
        initialBinding: AppBindings(),
        initialRoute: AppRoutes.home,
        onGenerateRoute: AppRoutes.generateRoutes,
        debugShowCheckedModeBanner: false,
        title: Constants.kAppName,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: "Tilt_Neon",
          scaffoldBackgroundColor: Colors.black,
        ),
        builder: (context, child) => ResponsiveBreakpoints.builder(
          child: child!,
          breakpoints: const [
            Breakpoint(start: 0, end: 450, name: MOBILE),
            Breakpoint(start: 451, end: 800, name: TABLET),
            Breakpoint(start: 801, end: 1920, name: DESKTOP),
            Breakpoint(start: 1921, end: double.infinity, name: '4K'),
          ],
        ),
      ),
    );
  }
}
