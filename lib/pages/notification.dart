import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Notification();
  }
}

class Notification extends StatefulWidget {
  const Notification({super.key});

  @override
  State<Notification> createState() => _NotificationState();
}

class _NotificationState extends State<Notification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.chevron_left,
                          size: 40.0,
                        ),
                      ],
                    ),
                  )),
              const SizedBox(
                height: 5.0,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 28.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Notification',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const Notificationwidget(
                text1: "Apple stock just increased\n check it out",
                text2: "15min ago",
                image: "images/notification2.png",
              ),
              const Divider(),
              const SizedBox(
                height: 20.0,
              ),
              const Notificationwidget(
                text1:
                    "Check out today's best invest-\ntor. You'll learn from him",
                text2: "3min ago",
                image: "images/notification3.png",
              ),
              const Divider(),
              const SizedBox(
                height: 20.0,
              ),
              const Notificationwidget(
                text1: "Where do you see yourself\n in the next ages",
                text2: "30secs ago",
                image: "images/notification1.png",
              ),
              const Divider(),
              const SizedBox(
                height: 20.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Notificationwidget extends StatelessWidget {
  const Notificationwidget({
    required this.text1,
    required this.text2,
    required this.image,
    super.key,
  });
  final String text1;
  final String text2;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 28.0, right: 28.0, top: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(image),
          Text(
            text1,
            style: const TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500),
          ),
          Text(
            text2,
          ),
        ],
      ),
    );
  }
}
