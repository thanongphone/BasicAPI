import 'package:flutter/material.dart';
import 'package:layout/pages/home.dart';
import 'package:layout/pages/map.dart';
import 'package:layout/pages/menu.dart';
import 'package:layout/pages/message.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  // const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  final tabs = [
    Homepage(),
    MessagePage(),
    Menupage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "ການບໍລິການ"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "ຂໍ້ຄວາມ"),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: "ລາຍການ"),
        ],
        onTap: (index) {
          setState(() {
            print(index);
            _currentIndex = index;
          });
        },
      ),
    );
  }
}


// BottomNavigationBarItem(icon: Icon(Icons.home), label: "Services"),
//           BottomNavigationBarItem(icon: Icon(Icons.message), label: "ຂໍ້ຄວາມ"),
//           BottomNavigationBarItem(icon: Icon(Icons.map), label: "ແຜນທີ່"),
//           BottomNavigationBarItem(icon: Icon(Icons.menu), label: "ເມນູ"),