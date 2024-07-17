import 'package:flutter/material.dart';
import 'package:fintech_project/widgets/buttons.dart';

class Bankaccount extends StatelessWidget {
  const Bankaccount({super.key});

  @override
  Widget build(BuildContext context) {
    return const Bank();
  }
}

class Bank extends StatefulWidget {
  const Bank({super.key});

  @override
  State<Bank> createState() => _BankState();
}

class _BankState extends State<Bank> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
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
                        Padding(
                          padding: EdgeInsets.only(top: 8.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.chevron_left,
                                size: 40.0,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 58.0),
                                child: Text(
                                  'Bank account info',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(
                  margin: const EdgeInsets.all(10),
                  width: 370,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('images/boa.png'),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Bank of America - 018128xxx',
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.w500),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 130.0),
                              child: Text(
                                'Jonas Macroni',
                              ),
                            )
                          ],
                        ),
                        GestureDetector(
                            onTap: () {}, child: const Icon(Icons.more_vert)),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Container(
                  margin: const EdgeInsets.all(10),
                  width: 370,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('images/zenith.png'),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Zenith Bank - 018128xxx',
                            style: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.w500),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 100.0),
                            child: Text(
                              'Jonas Macroni',
                            ),
                          )
                        ],
                      ),
                      const Icon(Icons.more_vert),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 440,
              ),
              const Column(
                children: [
                  Userbuttons(text: 'Add account'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
