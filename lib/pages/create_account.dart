
import 'package:flutter/material.dart';
import 'package:fintech_project/widgets/buttons.dart';
import 'package:fintech_project/widgets/create_account_field.dart';
class Createaccount  extends StatelessWidget {
  const Createaccount({super.key});

  @override
  Widget build(BuildContext context) {
    return const SignUp();
  }
}
class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  SignUpState createState() => SignUpState();
}

class SignUpState extends State<SignUp> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
     return Scaffold(
    body: SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              const SizedBox(
                height:170 , width: 20.0,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Image.asset(
                  'images/Arrow - Left 2.png',
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Createaccount ()),
              );
            },
            child: const Text(
              textAlign: TextAlign.center,
              'Create an account ', style: TextStyle(
              fontSize: 35.0, fontWeight: FontWeight.w700
            ),),
          ),
         const  Text('Invest and double your income now', style: TextStyle(
            fontWeight: FontWeight.w700, fontSize: 15.0
          ),),
        Container(
          margin: const EdgeInsets.only(top: 30.0),
           child: Column(
             children: [
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal:25.0),
                 child: Createaccountfield(nameController: _nameController, label: "Full name"),
               ),
               const SizedBox(height: 20.0,),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 25.0),
                 child: Createaccountfield(nameController: _emailController, label: "Email address"),
               ),
               const SizedBox(height: 20.0,),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 25.0),
                 child: Createaccountfield(nameController: _passwordController, label: "Password"),
               ),
               const SizedBox( height: 50),
               const Userbuttons(text: 'Sign-up'),
               const SizedBox(height: 20,),
               const Text('Already have an account?', style: TextStyle(
                 fontSize: 15.0, color: Colors.green, fontWeight: FontWeight.w700
               ),)
             ],
           ),
         ),

    ]),
    ));
  }
}


