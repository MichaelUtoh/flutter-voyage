import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studnt/components/profile_header.dart';
import 'package:studnt/components/statistics_pad.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: CupertinoColors.white,
        leading: Icon(
          Icons.arrow_back_ios_new_rounded,
          color: CupertinoColors.black,
        ),
        middle: Text('EMPLOYER\'S PROFILE'),
      ),
      child: ListView(
        children: [
          const SizedBox(height: 20),
          const ProfileHeader(),
          const SizedBox(height: 30),
          const Text(
            'Darren Adams',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 60.0),
            child: Text(
              'I am just looking for someone who will help me design my dream house',
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 20),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.location_pin,
                color: CupertinoColors.black,
              ),
              SizedBox(width: 5),
              Text(
                'Bedstuy, New York',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              StatPad(value: 4, title: 'POSTED'),
              StatPad(value: 0, title: 'APPLIED'),
              StatPad(value: 4, title: 'FINISHED'),
            ],
          ),
          const SizedBox(height: 20),
          Image.asset(
            'assets/images/yellow.png',
            fit: BoxFit.cover,
            height: 300,
          ),
          const SizedBox(height: 20),
          const Text(
            'No rating and reviews yet!',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 60.0),
            child: Text(
              'We need to collect few opinions before presenting them',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}
