import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({
    Key? key,
    required this.imageUrl,
    required this.radius,
  }) : super(key: key);

  final String imageUrl;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: radius * 2,
      width: radius * 2,
      child: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({
    Key? key,
    required this.avatarImageUrl,
    required this.coverImageUrl,
    required this.displayName,
    required this.username,
    required this.bio,
  }) : super(key: key);

  final String avatarImageUrl;
  final String coverImageUrl;
  final String displayName;
  final String username;
  final String bio;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                coverImageUrl,
                fit: BoxFit.cover,
              ),
              // centerTitle: true,
              // expandedTitleScale: 20,
              title: CircleAvatar(
                radius: 51,
                // backgroundColor: Colors.blue,
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                    avatarImageUrl,
                  ),
                ),
              ),
            ),
            bottom: PreferredSize(
                preferredSize: const Size(200, 100),
                child: Positioned(
                  top: 40,
                  left: -20,
                  child: CircleAvatar(
                    radius: 51,
                    // backgroundColor: Colors.blue,
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(
                        avatarImageUrl,
                      ),
                    ),
                  ),
                )),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 22, vertical: 12),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(FontAwesomeIcons.solidMessage)),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 50,
                            backgroundImage: NetworkImage(
                              avatarImageUrl,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            displayName,
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                          const SizedBox(height: 8),
                          Text(
                            username,
                            style: const TextStyle(color: Colors.grey),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  bio,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 16),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return ListTile(
                  title: Text('Posts #$index'),
                );
              },
              childCount: 100,
            ),
          ),
        ],
      ),
    );
  }
}
