import 'package:flutter/material.dart';
class AnalyticsPage extends StatelessWidget {
  const AnalyticsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.purple,
      alignment: Alignment.center,
      child: Text(
          style:TextStyle(
              color: Colors.white),
          "This is analytics page"),);
  }
}
