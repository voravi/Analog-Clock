import 'package:analog_clock/modals/theme_provider.dart';
import 'package:analog_clock/utils/theme.dart';
import 'package:provider/provider.dart';

import '/utils/appRoutes.dart';
import '/utils/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ThemeModal(),
      child: Consumer<ThemeModal>(
        builder: (context, theme, _) => MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Analog Clock",
          theme: themeData(context),
          darkTheme: darkThemeData(context),
          themeMode: theme.isLightTheme ? ThemeMode.light : ThemeMode.dark,
          //home: HomePage(),
          initialRoute: AppRoutes().homePage,
          routes: routes,
        ),
      ),
    );
  }
}
