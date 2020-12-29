import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:santa_assistant/Global/Colors/Colors.dart';
import 'package:santa_assistant/SplashScreen/SplashScreen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarBrightness: Brightness.dark,
    statusBarIconBrightness: Brightness.dark,
    systemNavigationBarIconBrightness: Brightness.light,
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Santa Assistant',
      theme: ThemeData(
        primaryColor: bgColor(),
      ),
      home: SplashScreen(),
      routes: {
        SplashScreen.routeName: (ctx) => SplashScreen(),
      },
    );
  }
}
