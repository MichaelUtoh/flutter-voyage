import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileNav extends StatelessWidget {
  const ProfileNav({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoNavigationBar(
      backgroundColor: CupertinoColors.white,
      leading: Icon(
        Icons.arrow_back_ios_new_rounded,
        color: CupertinoColors.darkBackgroundGray,
      ),
      middle: Text(
        'EMPLOYER\'S PROFILE',
        style: TextStyle(
          color: CupertinoColors.darkBackgroundGray,
          fontSize: 14,
        ),
      ),
      trailing: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Icon(
            Icons.comment_bank_rounded,
            color: CupertinoColors.darkBackgroundGray,
          ),
          SizedBox(width: 10.0),
          Icon(
            Icons.share,
            color: CupertinoColors.darkBackgroundGray,
          ),
        ],
      ),
    );
  }
}
