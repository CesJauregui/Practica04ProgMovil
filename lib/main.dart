import 'package:flutter/material.dart';
import 'package:practica4_jauregui/pages/page_index.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: IndexPage(),
    );
  }
}
