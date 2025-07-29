import 'package:flutter/material.dart';
import 'package:portfoliosite/navigation/router.dart';
import 'package:portfoliosite/ui/core/localization/applocalization.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Portfolio Site',
      localizationsDelegates: const [ApplocalizationDelegate()],
      theme: ThemeData(
        primarySwatch: Colors.blue,
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.blue,
          accentColor: Colors.blueAccent,
          brightness: Brightness.light,
        ),
      ),

      routerConfig: router(context),
    );
  }
}
