import 'package:flutter/material.dart';
class GamifiedMemoryPage extends StatelessWidget {
  const GamifiedMemoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.purple,
      alignment: Alignment.center,
      child: Text(
          style:TextStyle(
              color: Colors.white),
          "This is gamified page"),);
  }
}
