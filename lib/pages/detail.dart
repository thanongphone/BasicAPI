import 'dart:ui';

import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  final v1, v2, v3, v4;
  DetailPage(this.v1, this.v2, this.v3, this.v4);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  var _v1, _v2, _v3, _v4;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _v1 = widget.v1;
    _v2 = widget.v2;
    _v3 = widget.v3;
    _v4 = widget.v4;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 160, 53, 41),
      appBar: AppBar(
        title: const Text("Detail"),
        backgroundColor: const Color.fromARGB(255, 194, 16, 7),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Center(
                child: Column(
              children: [
                Text(
                  _v1,
                  style: const TextStyle(fontSize: 20, color: Colors.white),
                ),
                SizedBox(height: 20),
                Text(
                  _v2,
                  style: const TextStyle(fontSize: 20, color: Colors.white),
                ),
                SizedBox(height: 20),
                Image.network(_v3),
                SizedBox(height: 20),
                Text(
                  _v4,
                  style: const TextStyle(fontSize: 20, color: Colors.white),
                ),
                SizedBox(height: 20),
                Image.asset("image/icon/x.png"),
                const Text(
                  "ແອັບບໍ່ທັນແລ້ວ ເດີ!!!!",
                  style: TextStyle(
                    fontSize: 40,
                    color: Color.fromARGB(255, 223, 220, 220),
                    fontFamily: "PB-Warnjai-Bold.ttf",
                  ),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
