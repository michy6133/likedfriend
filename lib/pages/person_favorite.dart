import 'package:flutter/material.dart';
import 'package:training/pages/friend_page.dart';

class LikedFriendsPage extends StatelessWidget {
  final List<Friend> friends;

  const LikedFriendsPage({Key? key, required this.friends}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Friend> likedFriends = friends.where((friend) => friend.liked).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text("Amis aimés"),
      ),
      body: ListView.builder(
        itemCount: likedFriends.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(likedFriends[index].name),
            leading: CircleAvatar(),
          );
        },
      ),
    );
  }
}
