import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'nextScreen.dart';

class HomePage extends StatelessWidget {
  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Instagram'),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {},
          ),
          IconButton(
            icon: FaIcon(FontAwesomeIcons.facebookMessenger),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Stories section
            Container(
              height: 120.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 32,
                          backgroundImage: NetworkImage(
                              'https://picsum.photos/id/$index/200/200'),
                        ),
                        SizedBox(height: 8.0),
                        Text('User $index'),
                      ],
                    ),
                  );
                },
              ),
            ),
            Divider(),
            // Posts section
            Column(
              children: List.generate(
                10,
                    (index) => ListTile(
                  leading: CircleAvatar(
                    radius: 24,
                    backgroundImage:
                    NetworkImage('https://picsum.photos/id/$index/100/100'),
                  ),
                  title: Text('User $index'),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('A caption for post $index'),
                      SizedBox(height: 8.0),
                      TextField(
                        controller: myController,
                        decoration: InputDecoration(
                          hintText: 'إرسل ردك',
                        ),
                      ),
                      ElevatedButton(
                        child: Text('Send'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => NextScreen(text: myController.text)),
                          );
                        },
                      ),
                    ],
                  ),
                  contentPadding: EdgeInsets.all(16.0),
                ),
              ),
            ),

          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items: [
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
