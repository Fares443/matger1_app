
import 'package:flutter/material.dart';
import 'package:matger1_app/screen/Home_Screen.dart';
import 'package:matger1_app/constants.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(MyApp());

}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      primaryColor:kPrimaryColor,
        accentColor: kPrimaryColor

      ),
      localizationsDelegates: [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,

      ],
      supportedLocales: [
        const Locale('ar', 'AE'), // English
        const Locale('ar', 'AE'), // Hebrew
      ],      home:HomePage(),
    );
  }
}


