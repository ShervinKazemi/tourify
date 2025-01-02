import 'package:Tourify/Home%20Screen/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'theme/util.dart';
import 'theme/theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final brightness =
        WidgetsBinding.instance.platformDispatcher.platformBrightness;
    final textTheme = createTextTheme(context, "Roboto", "Poppins");
    final theme = MaterialTheme(textTheme);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tourify',
      theme: theme.light(),
      darkTheme: theme.dark(),
      themeMode:
          brightness == Brightness.light ? ThemeMode.light : ThemeMode.dark,
      home: const HomeScreen(),
      builder: (context, child) {
        return AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle(
            statusBarIconBrightness: brightness == Brightness.light
                ? Brightness.dark
                : Brightness.light,
            statusBarColor: Colors.transparent,
          ),
          child: child ?? const SizedBox.shrink(),
        );
      },
    );
  }
}
