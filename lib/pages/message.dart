import 'package:flutter/material.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({super.key});

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 219, 178, 178),
      appBar: AppBar(
        title: const Text(
          "ຂໍ້ຄວາມ",
          style: TextStyle(
            fontFamily: "PB-Warnjai-Bold.ttf",
          ),
        ),
        backgroundColor: Colors.red,
      ),
    );
  }
}
