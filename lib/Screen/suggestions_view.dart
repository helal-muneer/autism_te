import 'package:flutter/material.dart';

class SuggestionsView extends StatelessWidget {
  const SuggestionsView({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController textEditingController = TextEditingController();
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 16.0, left: 16.0, top: 27.0),
          child: TextField(
            textAlign: TextAlign.right,
            controller: textEditingController,
            decoration: InputDecoration(
              hintText: ' أدخل عنوان الاقتراح',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(
                  color: Colors.pink,
                  width: 2,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 35,
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            textAlign: TextAlign.right,
            controller: textEditingController,
            decoration: InputDecoration(
              hintText: ' أدخل محتوى الاقتراح',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(
                  color: Colors.pink,
                  width: 2,
                ),
              ),
            ),
            maxLines: 5,
          ),
        ),
        const SizedBox(
          height: 35,
        ),
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(Colors.pink.shade900),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
                side: const BorderSide(color: Colors.purple),
              ),
            ),
            textStyle: MaterialStateProperty.all<TextStyle>(
              const TextStyle(fontSize: 20),
            ),
            padding: MaterialStateProperty.all<EdgeInsets>(
              const EdgeInsets.symmetric(horizontal: 160, vertical: 6),
            ),
          ),
          onPressed: () {

            // Handle suggestion submission
            String suggestion = textEditingController.text;
            // Send suggestion to server or save locally
            textEditingController.clear();
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('شكرا لك على اقتراحك!')),

            );
          },
          child: const Text('إرسل'),
        ),
      ],
    );
  }
}
