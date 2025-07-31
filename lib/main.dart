import 'package:flutter/material.dart';
import 'package:portfoliosite/navigation/router.dart';
import 'package:portfoliosite/ui/core/localization/applocalization.dart';
import 'package:flutter_web_plugins/url_strategy.dart';

void main() {
  usePathUrlStrategy();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Dillimono',
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
