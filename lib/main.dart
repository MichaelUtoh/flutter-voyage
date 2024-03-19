import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:studnt/pages/homepage.dart';
import 'package:studnt/pages/profile.dart';
import 'package:studnt/pages/settings.dart';
import 'package:studnt/pages/splash_screen.dart';
import 'package:studnt/providers/user.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => UserProvider(),
        ),
      ],
      child: CupertinoApp(
        debugShowCheckedModeBanner: false,
        home: const CupertinoPageScaffold(
          backgroundColor: CupertinoColors.white,
          child: SplashScreen(),
        ),
        theme: const CupertinoThemeData(
          brightness: Brightness.light,
          scaffoldBackgroundColor: CupertinoColors.white,
          primaryColor: Color.fromRGBO(186, 104, 200, 1),
          applyThemeToAll: true,
        ),
        routes: {
          '/homepage': (context) => const ProfilePage(),
          '/settings': (context) => const SettingsPage(),
        },
      ),
    );
  }
}
