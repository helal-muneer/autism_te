import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../components/post_component.dart';
import 'profile_screen.dart';

class HomePage extends StatelessWidget {
  final myController = TextEditingController();

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Instagram'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {},
          ),
          IconButton(
            icon: const FaIcon(FontAwesomeIcons.facebookMessenger),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Stories section
            SizedBox(
              height: 120.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 12),

                    /// we should make a UserModel and [Reusable] UserAvatar [component]
                    /// that takes a UserModel ... for [Viewing] it every ware.
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (_) => ProfilePage(
                                  avatarImageUrl:
                                      'https://picsum.photos/id/$index/200/200',
                                  bio: ' Bio Goes Here... ' * 5,
                                  coverImageUrl:
                                      'https://picsum.photos/id/$index/200/200',
                                  displayName: 'User $index',
                                  username: '@username_$index',
                                )));
                      },
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 32,
                            backgroundImage: NetworkImage(
                                'https://picsum.photos/id/$index/200/200'),
                          ),
                          const SizedBox(height: 8.0),
                          Text('User $index'),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const Divider(),
            // Posts section
            Column(
              children: List.generate(
                10,
                (index) =>
                    PostComponent(replyTextCtrl: myController, postId: index),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Likes',
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 12,
              backgroundImage:
                  NetworkImage('https://picsum.photos/id/0/100/100'),
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
