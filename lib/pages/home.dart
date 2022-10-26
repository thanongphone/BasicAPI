import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:layout/pages/detail.dart';

class Homepage extends StatefulWidget {
  // const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 201, 119, 119),
      appBar: AppBar(
        title: const Text("ບໍ່ບອກດອກ App"),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: FutureBuilder(
          builder: (context, snapshot) {
            //Data from Future
            var data = json.decode(snapshot.data.toString()); //change to string
            return ListView.builder(
              itemBuilder: (BuildContext comtext, int index) {
                return MyBox(
                  data[index]['title'],
                  data[index]['sub'],
                  data[index]['image_url'],
                  data[index]['detail'],
                );
              },
              itemCount: data.length,
            );
          },
          future: DefaultAssetBundle.of(context).loadString('assets/data.json'),
        ),
      ),
    );
  }

  Widget MyBox(String title, String sub, String image_url, String detail) {
    //การสร้าง Fucntion
    var v1, v2, v3, v4;
    v1 = title;
    v2 = sub;
    v3 = image_url;
    v4 = detail;
    return Container(
      margin: const EdgeInsets.all(15.0), //Empty space outside container
      padding: const EdgeInsets.all(15.0), //Empty space inside container
      width: 200,
      height: 158,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20), // h hai box radius
        // ignore: prefer_const_constructors
        image: DecorationImage(
            // ignore: prefer_const_constructors
            image: NetworkImage(image_url),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.5),
              BlendMode.darken,
            )),
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,

        // ignore: prefer_const_literals_to_create_immutables
        children: [
          // ignore: prefer_const_constructors

          Text(
            title,
            style: const TextStyle(
              fontSize: 35,
              color: Color.fromARGB(255, 22, 232, 116),
              fontWeight: FontWeight.bold,
            ),
          ),
          // ignore: prefer_const_constructors

          Text(
            sub,
            style: const TextStyle(
              fontSize: 25,
              color: Color.fromARGB(255, 154, 207, 251),
              fontWeight: FontWeight.bold,
            ),
          ),

          TextButton(
            onPressed: () {
              print("Next Page>>>>>>");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailPage(v1, v2, v3, v4)));
            },
            child: Text(
              "Read more...",
              style: TextStyle(fontSize: 20),
            ),
          )
        ],
      ),
    );
  }
}
