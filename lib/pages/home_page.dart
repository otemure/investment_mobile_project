import 'package:flutter/material.dart';
import 'asset_page.dart';
import 'notification.dart';
import 'functionality_pages/addamount.dart';
import 'functionality_pages/invest_page.dart';
import 'package:intl/intl.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Home();
  }
}

class Home extends StatefulWidget {
  const Home({super.key, this.balance});
  final int? balance;
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _isVisible = true;

  void _toggleVisibility() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  String formatBalance(int balance) {
    final formatter = NumberFormat.currency(symbol: "\$", decimalDigits: 2);
    return formatter.format(balance);
  }

  final String username = 'Otemure';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60.0, left: 20, right: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.menu, size: 30),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const NotificationScreen()),
                      );
                    },
                    child: const Icon(
                      Icons.notifications_active,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0, top: 0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Welcome, $username.',
                    style: const TextStyle(
                        fontSize: 30.0, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(

              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Container(
                      width: 380,
                      height: 140,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: const LinearGradient(
                            colors: [
                              Color(0XFF31A05F), // Dark Gray
                              Color(0XFF221222),
                              // Green
                            ],
                          )),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 14.0, top: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Your total asset portfolio',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20.0),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  onTap: _toggleVisibility,
                                  child: Text(
                                    _isVisible
                                        ? formatBalance(balance)
                                        : '********',
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 25.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(),
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const Asset()),
                                        );
                                      },
                                      child: const Text(
                                        'invest now',
                                        style: TextStyle(color: Colors.green),
                                      ),
                                    )),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 30.0),
                              child: Row(
                                children: [
                                  GestureDetector(
                                    onTap: () async {
                                      await Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Balance()),
                                      );
                                      setState(() {});
                                    },
                                    child: const Text('Topup',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.w700)),
                                  ),
                                  GestureDetector(
                                      onTap: () async {
                                        await Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const Balance()),
                                        );
                                        setState(() {});
                                      },
                                      child: const Icon(
                                        Icons.add,
                                        size: 25.0,
                                        color: Colors.white,
                                      ))
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Best Plans',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700),
                  ),
                  Row(
                    children: [
                      Text(
                        'See All',
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w700),
                      ),
                      Icon(Icons.arrow_forward, color: Colors.red),
                    ],
                  ),
                ],
              ),
            ),
            // GridView(
            //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            //     crossAxisCount: 1,
            //   ),
            // )
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Bestplan(
                    image: 'images/gold.png',
                  ),
                  Bestplan(
                    image: 'images/silver.png',
                  ),
                  Bestplan(image: 'images/plat.png')
                ],
              ),
            ),
            Column(children: [
              const Padding(
                padding: EdgeInsets.only(top: 20.0, left: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Investment Guide',
                      style: TextStyle(
                          fontWeight: FontWeight.w700, fontSize: 25.0),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Basic type of investments',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text(
                          "This is how you set your foot for 2024\n stock market recession. what's next...",
                          style: TextStyle(fontSize: 15.0),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: Image.asset('images/Ellipse.png'),
                  )
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              const Divider(
                indent: 20,
                endIndent: 20,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'How much can you start wit..',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text(
                          "How do you like to see? it's a very\n different market from 2020. The way..",
                          style: TextStyle(fontSize: 15.0),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: Image.asset('images/notification1.png'),
                  )
                ],
              )
            ]),
          ],
        ),
      ),
    );
  }
}

class Bestplan extends StatelessWidget {
  const Bestplan({
    required this.image,
    super.key,
  });
  final String image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Image.asset(image),
    );
  }
}
