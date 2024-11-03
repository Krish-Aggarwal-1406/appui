import 'package:flutter/material.dart';
class ProgressTrackerPage extends StatelessWidget {
  const ProgressTrackerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.red,
      alignment: Alignment.center,
    child: Text(
        style: TextStyle(
          color: Colors.white),
        "This is progress page"),);
  }
}
