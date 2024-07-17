import 'package:flutter/material.dart';

class Userbuttons extends StatelessWidget {
  const Userbuttons({
   required this.text ,super.key,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0XFF31A062),
          minimumSize: const Size(350, 60),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        onPressed: () {},
        child: Text(
        text,
          style: const TextStyle(color: Colors.white, fontSize: 20.0),
        ));
  }
}