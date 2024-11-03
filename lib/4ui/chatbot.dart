import 'package:flutter/material.dart';
class ChatbotPage extends StatelessWidget {
  const ChatbotPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.purple,
      alignment: Alignment.center,
      child: Text(
          style:TextStyle(
          color: Colors.white),
          "This is chatbot page"),);
  }
}
