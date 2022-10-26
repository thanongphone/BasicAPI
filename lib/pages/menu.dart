import 'package:flutter/material.dart';

class Menupage extends StatefulWidget {
  const Menupage({super.key});

  @override
  State<Menupage> createState() => _MenupageState();
}

class _MenupageState extends State<Menupage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 219, 178, 178),
      appBar: AppBar(
        title: const Text(
          "ເມນູ",
          style: TextStyle(
            fontFamily: "PB-Warnjai-Bold.ttf",
          ),
        ),
        backgroundColor: Colors.red,
      ),
    );
  }
}
