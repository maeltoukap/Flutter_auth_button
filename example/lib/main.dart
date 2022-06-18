import 'package:fa_button/fa_button.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _flutterAuthPlugin = FAButton(
    type: "google", //anonyme, connexion, inscription, google, facebook
    onPressed: () {
      if (kDebugMode) {
        print("google");
      }
    },
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: _flutterAuthPlugin,
        ),
      ),
    );
  }
}
