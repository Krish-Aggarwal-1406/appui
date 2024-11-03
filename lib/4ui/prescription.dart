import 'package:flutter/material.dart';
class PrescriptionPage extends StatelessWidget {
  const PrescriptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.blue,
      alignment: Alignment.center,
      child: Text(
          style: TextStyle(
            fontSize:20,
              color: Colors.white),
          "This is prescription page"),);
  }
}
