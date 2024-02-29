import 'package:flutter/material.dart';
import 'package:malionmalion/scrren.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(main_Screen());
}

class main_Screen extends StatelessWidget {
  const main_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Localizations Sample App',
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('fa'), // farsi
      ],
      debugShowCheckedModeBanner: false,
      home: ScreenView(),
    );
  }
}
