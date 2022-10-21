// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'dart:html' as html;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tajuzzaman Tajol Molok | Profile',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const ProfileLandingPage(),
    );
  }
}

class ProfileLandingPage extends StatelessWidget {
  const ProfileLandingPage({Key? key}) : super(key: key);

  final imageUrl =
      'https://pbs.twimg.com/profile_images/1460495655609065472/ukijDhgb_400x400.jpg';

  final sizeboxHeight = 35.0;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          SizedBox(height: sizeboxHeight),
          CircleAvatar(
              backgroundImage: NetworkImage(imageUrl),
              backgroundColor: Colors.white,
              radius: 48),
          SizedBox(height: 12),
          Text(
            '@sirbeyta',
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
          SizedBox(height: 20),
          ButtonLink(
              title: 'GitHub',
              btnColor: Colors.black,
              url: 'https://github.com/beyta'),
          ButtonLink(
              title: 'Youtube',
              btnColor: Colors.red,
              url: 'https://www.youtube.com/c/TajuzzamanTajolMolok'),
          ButtonLink(
              title: 'Instagram',
              btnColor: Colors.brown,
              url: 'https://www.instagram.com/sirbeyta/'),
          ButtonLink(
              title: 'Facebook',
              btnColor: Colors.blueAccent,
              url: 'https://www.facebook.com/sirbeyta'),
          ButtonLink(
              title: 'Twitter',
              btnColor: Colors.blueGrey,
              url: 'https://twitter.com/tajuzzamantmy/'),
          SizedBox(height: 20),
          Text(
            'Created by Beyta using Flutter Web',
            style: TextStyle(fontSize: 10, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}

class ButtonLink extends StatelessWidget {
  const ButtonLink({
    Key? key,
    required this.title,
    required this.btnColor,
    required this.url,
  }) : super(key: key);

  final String title;
  final Color btnColor;
  final String url;

  @override
  Widget build(BuildContext context) {
    final widthQuery = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: SizedBox(
        width: widthQuery * 0.55,
        child: TextButton(
          onPressed: () {
            html.window.open(url, 'new tab');
          },
          child: Text(title),
          style: TextButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 20),
            primary: Colors.white,
            // backgroundColor: Colors.black,
            backgroundColor: btnColor,
          ),
        ),
      ),
    );
  }
}
