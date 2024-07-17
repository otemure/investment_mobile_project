import 'package:fintech_project/pages/functionality_pages/addamount.dart';
import 'package:flutter/material.dart';
import 'package:fintech_project/pages/asset_page.dart';
import 'package:intl/intl.dart';

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => BalanceState();
}

class BalanceState extends State<Portfolio> {
  final TextEditingController amountcontroller = TextEditingController();
  String formatBalance(int balance) {
    final formatter = NumberFormat.currency(symbol: "\$", decimalDigits: 2);
    return formatter.format(balance);
  }

  int hintBalance = balance;
  int investedBalance = 0;
  int newBalance = 0;
  String amount = '0';
  void investAmount() {
    if (investedBalance > hintBalance) {
      displaySnackBar(
        context,
        'insufficent funds, kindly topup.',
      );
    } else {
      displaySnackBar(
        context,
        "topup successful",
      );
      Future.delayed(const Duration(seconds: 1), () {
        Navigator.pop(context);
      });
    }
    investedBalance -= int.tryParse(amount) ?? 0;
    amount = "0";
    newBalance = balance - investedBalance;
  }

  void displaySnackBar(BuildContext context, String message) {
    final snackBar = SnackBar(
      content: Text(message),
      duration: const Duration(seconds: 2),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.chevron_left,
                    size: 30.0,
                  )),
              const SizedBox(
                height: 40.0,
              ),
              const Center(
                child: Text(
                  'Enter amount to invest',
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  initialValue: "\$$hintBalance",
                  onChanged: (value) {
                    amount = value;
                  },
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50.0),
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      investAmount();
                    });
                  },
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.green),
                    minimumSize: WidgetStateProperty.all(const Size(300, 50)),
                  ),
                  child: const Text(
                    'Proceed',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w500),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
