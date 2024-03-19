import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:studnt/pages/settings.dart';
import 'package:studnt/providers/user.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        trailing: GestureDetector(
          onTap: () {
            Navigator.push(context,
                CupertinoPageRoute(builder: (context) => const SettingsPage()));
          },
          child: const Icon(Icons.settings, color: Colors.black),
        ),
      ),
      child: Center(
        child: Text(
          context.watch<UserProvider>().userName,
          style: const TextStyle(
            color: CupertinoColors.black,
            fontWeight: FontWeight.w500,
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}
