import 'package:flutter/material.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 219, 178, 178),
      appBar: AppBar(
        title: const Text(
          "ແຜນທີ່",
          style: TextStyle(
            fontFamily: "PB-Warnjai-Bold.ttf",
          ),
        ),
        backgroundColor: Colors.red,
      ),
    );
  }
}
