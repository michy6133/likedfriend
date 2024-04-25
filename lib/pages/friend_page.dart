import 'package:flutter/material.dart';
import 'package:training/pages/person_favorite.dart';


class Friend {
  String name;
  bool liked;

  Friend({required this.name, required this.liked});
}
class FriendPage extends StatefulWidget {
  const FriendPage({super.key});
  //const FriendPage({Key? key}) : super(key: key);

  @override
  State<FriendPage> createState() => _FriendPageState();

}

class _FriendPageState extends State<FriendPage> {
  List<Friend> friends = [
    Friend(name: "Michy", liked: false),
    Friend(name: "Hafiz", liked: false),
    Friend(name: "Anselme", liked: false),
    Friend(name: "Marius", liked: false),
    Friend(name: "Chaf", liked: false),
    Friend(name: "Imma", liked: false),
    Friend(name: "James", liked: false),
    Friend(name: "Charles", liked: false),
    Friend(name: "Aurel", liked: false),
    Friend(name: "Barnabé", liked: false),
  ];

  void persLiked(int index){
    setState(() {
      friends[index].liked = !friends[index].liked;
    });
  }

  /*void removeFriend(int index) {
    setState(() {
      friends.removeAt(index);
    });
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("IUT 2024 Training"),
        actions: [
          IconButton(
            icon: Icon(Icons.favorite),
            onPressed: () {
              Navigator.push(context,
                MaterialPageRoute(
                  builder: (context) => LikedFriendsPage(friends: friends),
                ),              );
            },
          )
        ],
      ),
      body: ListView.builder(

        itemCount: friends.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(friends[index].name),
            subtitle: Text("Bonjour comment vas-tu?"),
            leading: CircleAvatar(),
            trailing: IconButton(
              icon: Icon(
                friends[index].liked ? Icons.favorite : Icons.favorite_border,
                color: friends[index].liked? Colors.red : Colors.black,
              ),
              onPressed: () {
                persLiked(index);
              },
            ),
            onTap: () {
              if (friends[index].liked) {
                persLiked(index);

              }
            },
          );
        },

      ),
    );
  }
}
