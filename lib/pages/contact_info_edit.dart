import 'package:flutter/material.dart';

class Contactinfopage extends StatelessWidget {
  const Contactinfopage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Contactinfo();
  }
}

class Contactinfo extends StatefulWidget {
  const Contactinfo({super.key});

  @override
  State<Contactinfo> createState() => _ContactinfoState();
}

class _ContactinfoState extends State<Contactinfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 80.0,
                child: Row(
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: const Icon(
                              Icons.chevron_left,
                              size: 40.0,
                            )),
                      ],
                    ),
                    const SizedBox(
                      width: 100,
                    ),
                    const Text(
                      'Contact Info',
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('images/contact.png'),
                        radius: 100,
                      ),
                      Icon(
                        Icons.edit,
                        color: Colors.white,
                      )
                    ],
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text(
                  'Name',
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Contactform(
                  info: 'Warren buffet',
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10.0, right: 10),
                child: Divider(
                  height: 20,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text(
                  'BirthDate',
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Contactform(
                  info: '05 November 1993',
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10.0, right: 10),
                child: Divider(
                  height: 20,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text(
                  'Gender',
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Contactform(
                  info: 'Male',
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10.0, right: 10),
                child: Divider(
                  height: 20,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text(
                  'Email',
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Contactform(info: 'otemure.george@yahoo.com'),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10.0, right: 10),
                child: Divider(
                  height: 20,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text(
                  'Phone Number',
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Contactform(
                  info: '_',
                  isChange: false,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10.0, right: 10),
                child: Divider(
                  height: 20,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text(
                  'Address',
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Contactform(
                  info: '_',
                  isChange: false,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Contactform extends StatelessWidget {
  const Contactform({
    this.isChange = true,
    required this.info,
    super.key,
  });
  final String info;
  final bool? isChange;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            info,
            style: const TextStyle(fontSize: 15.0),
          ),
          if (isChange == true)
            const Text(
              'Change',
              style: TextStyle(color: Colors.green),
            )
        ],
      ),
    );
  }
}
