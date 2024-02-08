import 'package:flutter/material.dart';
import 'package:restuarant/Pages/menu.dart';

void main()
{
  runApp(res());
}

class res extends StatelessWidget {
  const res({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: menu(),
    );
  }
}
