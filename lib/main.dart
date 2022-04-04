import 'package:flutter/material.dart';
import 'package:shoes_selling_ui/screens/home_screen.dart';
import 'package:shoes_selling_ui/screens/welcome_screen.dart';

import 'package:get/get.dart';

void main() {
  runApp(const MainPage());
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
