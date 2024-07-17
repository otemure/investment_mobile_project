import 'package:fintech_project/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'contact_info_edit.dart';
import 'bank_account_info.dart';

class Profilepage extends StatelessWidget {
  const Profilepage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Profile();
  }
}

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 28.0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Align(
                        alignment: Alignment.centerLeft,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(
                            Icons.chevron_left,
                            size: 30.0,
                          ),
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Profile',
                        style: TextStyle(
                            fontSize: 30.0, fontWeight: FontWeight.w700),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              const CircleAvatar(
                backgroundImage: AssetImage('images/pics.png'),
                radius: 70.0,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Jonas Macroni',
                style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w700),
              ),
              const Text(
                'Expert',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 20.0,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Contactinfo()),
                  );
                },
                child: const Profileinfo(
                    logo: Icons.contact_mail_sharp, text1: 'Contact info'),
              ),
              const Profileinfo(
                  logo: Icons.stay_current_landscape,
                  text1: 'Source of Funding Info'),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Bankaccount()),
                  );
                },
                child: const Profileinfo(
                    logo: Icons.account_balance, text1: 'Bank Account Info'),
              ),
              const Profileinfo(
                  logo: Icons.description, text1: 'Document info'),
              const Profileinfo(logo: Icons.settings, text1: 'Settings'),
            ],
          ),
        ),
      ),
    );
  }
}

class Profileinfo extends StatelessWidget {
  const Profileinfo({
    required this.text1,
    required this.logo,
    super.key,
  });
  final String text1;
  final IconData logo;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(10),
          width: 370,
          height: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: Colors.white),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Icon(logo),
              ),
              Text(
                text1,
                style: const TextStyle(
                    fontWeight: FontWeight.w700, fontSize: 18.0),
              ),
              const Icon(Icons.chevron_right),
            ],
          ),
        )
      ],
    );
  }
}
