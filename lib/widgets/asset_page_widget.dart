import 'package:flutter/material.dart';

class AssetHistory extends StatelessWidget {
  const AssetHistory({
    required this.text1,
    required this.text2,
    required this.text3,
    required this.textColor,
    super.key,
  });
  final String text1;
  final String text2;
  final String text3;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text(
                text1,
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w700,
                    color: textColor),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    text2,
                    style: const TextStyle(
                        fontWeight: FontWeight.w300,
                        color: Colors.grey,
                        fontSize: 15.0),
                  ),
                  Row(
                    children: [
                      Text(
                        text3,
                        style: const TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
