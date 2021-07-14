import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tmplayer/theme/my_themes.dart';
import 'package:tmplayer/view/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(create: (context) => ThemeProvider(),
  builder: (context, _)
  {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TM Player',
      themeMode: themeProvider.themeMode,
      theme: MyThemes.lightTheme,
      darkTheme: MyThemes.darkTheme,
      home: Home(title: 'TM Player'),
    );
  }
  );
}

