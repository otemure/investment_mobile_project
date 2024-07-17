import 'package:flutter/material.dart';

int balance = 0;

class BalancePage extends StatelessWidget {
  const BalancePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class Balance extends StatefulWidget {
  const Balance({super.key});

  @override
  State<Balance> createState() => BalanceState();
}

class BalanceState extends State<Balance> {
  final TextEditingController amountcontroller = TextEditingController();
  void addAmount() {
    final enteredAmount = amountcontroller.text;
    final amount = int.tryParse(enteredAmount);
    if (enteredAmount.isEmpty) {
      displaySnackBar(context, 'Please enter an amount.');
      return;
    } else if (amount == null || amount <= 0) {
      displaySnackBar(context, 'invalid amount entered!.');
      return;
    } else {
      balance += int.tryParse(enteredAmount) ?? 0;
      amountcontroller.clear();
      displaySnackBar(
        context,
        "topup successful",
      );
      Future.delayed(const Duration(seconds: 1), () {
        Navigator.pop(context);
      });
    }
  }

  void displaySnackBar(BuildContext context, String message) {
    final snackBar = SnackBar(
      behavior: SnackBarBehavior.floating,
      content: Text(
        message,
        style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 18.0),
      ),
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
                height: 20.0,
              ),
              const Center(
                child: Text(
                  'Top up your account!',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(

                  controller: amountcontroller,
                  decoration: const InputDecoration(hintText: '\$Enter Amount'),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50.0),
                child: TextButton(
                  onPressed: () {
                    addAmount();
                  },
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.green),
                    minimumSize: WidgetStateProperty.all(const Size(300, 50)),
                  ),
                  child: const Text(
                    'TOP UP',
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
