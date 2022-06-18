# fa_button

A new Flutter plugging for firebase auth (anonyme, connexion, inscription, google, facebook).

## Getting Started

This project is a starting point for a Flutter
[plug-in package](https://flutter.dev/developing-packages/),
a specialized package that includes platform-specific implementation code for
Android and/or iOS.

For help getting started with Flutter development, view the
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


## Examples

![Screenshot from 2022-06-18 22-13-52](https://user-images.githubusercontent.com/74214399/174457457-e2f16015-ee3f-4f78-b640-bbfa9824bfbf.png)

![Screenshot from 2022-06-18 22-15-01](https://user-images.githubusercontent.com/74214399/174457458-44973cd1-4b82-4837-8fd5-48f4a873d91a.png)

![Screenshot from 2022-06-18 22-15-16](https://user-images.githubusercontent.com/74214399/174457459-760b5dbf-7811-43d7-986f-ddeea034707c.png)

![Screenshot from 2022-06-18 22-15-33](https://user-images.githubusercontent.com/74214399/174457460-fd248aeb-d102-486f-bd41-93d1d6fae19d.png)               

![Screenshot from 2022-06-18 22-15-58](https://user-images.githubusercontent.com/74214399/174457461-d30080a0-7eab-4462-8238-5e1f1e9e1a2b.jpg)


## INSTALLATION

***Terminal method***
Run one of the following command by opening your project folder on the terminal.
With Dart:
```
dart pub add fa_button
```
With Flutter:
```
flutter pub add fa_button
```

***Manual method***
This will add a line like this to your package's pubspec.yaml (and run an implicit dart pub get):
```
dependencies:
  fa_button: ^0.0.1
```

## IMPLEMENTATION

```
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
    type: "inscription", //anonyme, connexion, inscription, google, facebook
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
```
