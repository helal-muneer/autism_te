import 'package:flutter/material.dart';

class ComplaintsPage extends StatefulWidget {
  const ComplaintsPage({super.key});

  @override
  State<ComplaintsPage> createState() => _ComplaintsPageState();
}

class _ComplaintsPageState extends State<ComplaintsPage> {
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0, left: 16.0, top: 27.0),
            child: TextField(
              textAlign: TextAlign.right,
              controller: _textEditingController,
              decoration: InputDecoration(
                hintText: ' أدخل عنوان الاقتراح',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(
                    color: Color(0x9F760D16),
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
              controller: _textEditingController,
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
              String suggestion = _textEditingController.text;
              // Send suggestion to server or save locally
              _textEditingController.clear();
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('شكرا لك على اقتراحك!')),
              );
            },
            child: const Text('إرسل'),
          ),
        ],
      ),
    );
  }
}
