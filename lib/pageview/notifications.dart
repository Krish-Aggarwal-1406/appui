import 'package:flutter/material.dart';
class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.purple,
      alignment: Alignment.center,
      child: Text(
          style:TextStyle(
              color: Colors.white),
          "This is notifications page"),);
  }
}
