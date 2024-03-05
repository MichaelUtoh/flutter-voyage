import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studnt/pages/register.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: CupertinoPageScaffold(
        backgroundColor: CupertinoColors.white,
        child: Register(),
      ),
      theme: CupertinoThemeData(
          brightness: Brightness.light,
          scaffoldBackgroundColor: CupertinoColors.white,
          primaryColor: Color.fromRGBO(186, 104, 200, 1),
          applyThemeToAll: true),
    );
  }
}
