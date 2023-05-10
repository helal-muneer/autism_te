import 'package:flutter/material.dart';
// TODO Implement this library.
class SideMenuList extends StatelessWidget {
  const SideMenuList({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: const EdgeInsets.only(top: 15),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
    SizedBox(
    height: 30,
    ),
    CircleAvatar(
    radius: 65,
    backgroundColor: Colors.grey,
    child: CircleAvatar(
    radius: 60,
    backgroundImage: AssetImage('images/z.jpg'),
    ),
    ),
    SizedBox(
    height: 20,
    ),
    Text(
    'Abdullah',
    style: TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 30,
    fontFamily: 'BalsamiqSans'),
    ),
    SizedBox(
    height: 20,
    ),
      Padding(
        padding: EdgeInsets.only(top: 10, left: 40, bottom: 50,right: 50),
        child: Column(
          children: <Widget>[
            Divider(
              color: Colors.white,
            ),
            NewRow(
              text: 'Settings',
              icon: Icons.settings,
            ),
            Divider(
              color: Colors.white,
            ),
            SizedBox(
              height: 20,
            ),
            NewRow(
              text: 'Profile',
              icon: Icons.person_outline,
            ),
            SizedBox(
              height: 20,
            ),
            NewRow(
              text: 'Messages',
              icon: Icons.chat_bubble_outline,
            ),
            SizedBox(
              height: 20,
            ),
            NewRow(
              text: 'Saved',
              icon: Icons.bookmark_border,
            ),
            Divider(
              color: Colors.white,
            ),
            SizedBox(
              height: 20,
            ),
            NewRow(
              text: 'Favorites',
              icon: Icons.favorite_border,
            ),
            SizedBox(
              height: 20,
            ),
            NewRow(
              text: 'Hint',
              icon: Icons.lightbulb_outline,
            ),
            SizedBox(
              height: 70,
            ),
            OutlinedButton.icon(
                style:OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                        color: Colors.blueAccent,width: 2,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                ),
                onPressed: (){},
                icon: Icon(Icons.logout_outlined,color: Colors.white),
                label: Text("Logout",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Colors.white,)))
          ],
        ),
      ),
    ],
    ),
    );
  }
}

class NewRow extends StatelessWidget {
  final IconData icon;
  final String text;
  const NewRow({
     Key? keyo,
    required this.icon,
    required this.text,
  }) : super(key: keyo);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Icon(
          icon,
          color: Colors.white,
        ),
        SizedBox(
          width: 20,
        ),
        Text(
          text,
          style: TextStyle(color: Colors.white),
        )
      ],
    );
  }
}
