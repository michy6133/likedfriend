import 'package:flutter/material.dart';
import 'package:training/pages/friend_page.dart';
import 'package:training/pages/person_favorite.dart';


void main(){
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();

}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IUT Training',
      home: FriendPage(),
      routes: {
        '/person_favorite' : (context) => const LikedFriendsPage(friends: [],),
      },
    );

  }
}
