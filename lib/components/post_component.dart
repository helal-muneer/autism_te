import 'package:flutter/material.dart';

import 'widgets/post_bottom_widget.dart';

class PostComponent extends StatelessWidget {
  final TextEditingController replyTextCtrl;
  final int postId;
  const PostComponent(
      {required this.replyTextCtrl, required this.postId, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ListTile(
        contentPadding: const EdgeInsets.all(16.0),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 4,
              child: CircleAvatar(
                radius: 24,
                backgroundImage:
                    NetworkImage('https://picsum.photos/id/$postId/100/100'),
              ),
            ),
            const Spacer(flex: 1),
            Expanded(flex: 20, child: Text('User $postId')),
            Expanded(
                flex: 4,
                child: IconButton(
                    onPressed: () {}, icon: const Icon(Icons.more_vert))),
          ],
        ),
        subtitle: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text('A caption for post $postId' * 15),
            const SizedBox(height: 20),
            PostBottomWidget(replyTextCtrl: replyTextCtrl),
          ]),
        ),
      ),
    ]);
  }
}
