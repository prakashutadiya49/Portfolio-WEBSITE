import 'package:flutter/material.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const mypotfolio());
}
class mypotfolio extends StatefulWidget {
  const mypotfolio({super.key});

  @override
  State<mypotfolio> createState() => _mypotfolioState();
}

class _mypotfolioState extends State<mypotfolio> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      title: 'mypotfolio',
      home: home_page(),
    );
  }
}


