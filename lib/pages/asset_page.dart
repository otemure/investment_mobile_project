import 'package:fintech_project/pages/functionality_pages/invest_page.dart';
import 'package:flutter/material.dart';
import 'package:fintech_project/widgets/asset_page_widget.dart';
import 'functionality_pages/addamount.dart';
import 'package:intl/intl.dart';


class AssetPage extends StatelessWidget {
  const AssetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Asset();
  }
}

class Asset extends StatefulWidget {
  const Asset({super.key});

  @override
  State<Asset> createState() => _AssetState();
}

class _AssetState extends State<Asset> {
  String formatBalance(int balance) {
    final formatter = NumberFormat.currency(symbol: "\$", decimalDigits: 2);
    return formatter.format(balance);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      bottom: false,
      child: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(right: 40.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Expanded(child: SizedBox()),
                const Expanded(
                  child: Text(
                    'My Asset',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.cancel_rounded,
                    color: Colors.grey,
                    size: 30.0,
                  ),
                )
              ],
            ),
          ),
          const Row(
            children: [
              SizedBox(
                  child: Padding(
                      padding: EdgeInsets.only(top: 30.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 28.0),
                            child: Text(
                              'Your total asset portfolio',
                              style: TextStyle(
                                  color: Colors.grey, fontSize: 18.0),
                            ),
                          ),
                        ],
                      )))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 24.0),
                  child: Text(

                    formatBalance(balance),
                    style: const  TextStyle(
                        fontSize: 30.0, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              Row(
                children: [
                  const Icon(
                    Icons.arrow_upward,
                    color: Colors.green,
                  ),
                  const Text(
                    '+2%',
                    style: TextStyle(color: Colors.green),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Portfolio()),
                        );
                        setState(() {});
                      },
                      child: const Text(
                        'invest',
                        style: TextStyle(
                            color: Colors.green, fontWeight: FontWeight.w500),
                      ),),
                const   SizedBox(width: 10,),
                ],
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(left: 28.0, top: 40.0),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Current Plans',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700),
                )),
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Image.asset('images/Portfolio 2.png'),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'See All Plans',
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500),
                  ),
                  Icon(Icons.arrow_forward, color: Colors.red),
                ],
              ),
            ],
          ),
          const Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 28.0),
                  child: Text(
                    'History',
                    style:
                        TextStyle(fontWeight: FontWeight.w700, fontSize: 20.0),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              AssetHistory(
                  text1: "Rp 200.000",
                  text2: 'Buy "APPL" Stock',
                  text3: " Tue 9 Jul 2024",
                  textColor: Colors.black),
              Divider(
                height: 20,
              ),
              AssetHistory(
                text1: "Rp 150.000",
                text2: 'Sell "TLKM" Stock',
                text3: " Tue 9 Jul 2024",
                textColor: Colors.green,
              ),
              Divider(
                height: 20,
              ),
              AssetHistory(
                text1: "Rp 1.000.240",
                text2: 'Buy "FB" Stock',
                text3: " Tue 9 Jul 2024",
                textColor: Colors.black,
              ),
              Divider(
                height: 20,
              ),
              AssetHistory(
                text1: "Rp 1.000.240",
                text2: 'Sell "APPL" Stock',
                text3: " Tue 9 Jul 2024",
                textColor: Colors.green,
              )
            ],
          )
        ]),
      ),
    ));
  }
}
