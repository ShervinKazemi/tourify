import 'package:Tourify/Home%20Screen/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'theme/util.dart';
import 'theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    final brightness = View.of(context).platformDispatcher.platformBrightness;
    TextTheme textTheme = createTextTheme(context, "Roboto", "Poppins");
    MaterialTheme theme = MaterialTheme(textTheme);
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarIconBrightness: brightness == Brightness.light
            ? Brightness.dark // Light mode -> dark icons
            : Brightness.light, // Dark mode -> light icons
        statusBarColor: Colors.transparent,
      ),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Tourify',
          theme: brightness == Brightness.light ? theme.light() : theme.dark(),
          home: const HomeScreen()),
    );
  }
}
