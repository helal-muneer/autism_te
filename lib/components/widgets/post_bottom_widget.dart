import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../Screen/nextScreen.dart';

class PostBottomWidget extends StatefulWidget {
  final TextEditingController replyTextCtrl;
  const PostBottomWidget({required this.replyTextCtrl, super.key});

  @override
  State<PostBottomWidget> createState() => _PostBottomWidgetState();
}

class _PostBottomWidgetState extends State<PostBottomWidget> {
  bool isVisableTextField = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Column(
        children: [
          const Divider(thickness: 2),
          isVisableTextField
              ? Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: SizedBox(
                        height: 40,
                        child: TextField(
                          controller: widget.replyTextCtrl,
                          decoration: const InputDecoration(
                            hintText: 'إرسل ردك',
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(32)),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: ElevatedButton(
                        child: const Text('Send'),
                        onPressed: () {
                          if (context.mounted) {
                            setState(() {
                              isVisableTextField = !isVisableTextField;
                            });
                          }
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => NextScreen(
                                    text: widget.replyTextCtrl.text)),
                          );
                        },
                      ),
                    ),
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                        onPressed: () {
                          setState(() {
                            isVisableTextField = !isVisableTextField;
                          });
                        },
                        icon: const Icon(FontAwesomeIcons.repeat)),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            isVisableTextField = !isVisableTextField;
                          });
                        },
                        icon: const Icon(FontAwesomeIcons.shareNodes)),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            isVisableTextField = !isVisableTextField;
                          });
                        },
                        icon: const Icon(FontAwesomeIcons.reply)),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            isVisableTextField = !isVisableTextField;
                          });
                        },
                        icon: const Icon(FontAwesomeIcons.heart)),
                  ],
                ),
          const Divider(thickness: 2)
        ],
      ),
    );
  }
}
