
import 'package:flutter/material.dart';

import 'auth_cantroller.dart';


class Sing_Up extends StatefulWidget {
  const Sing_Up({Key? key}) : super(key: key);

  @override
  State<Sing_Up> createState() => _Sing_UpState();
}

class _Sing_UpState extends State<Sing_Up> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController repasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    "Wselcome Viks'b",
                    style: TextStyle(
                        color: Colors.purple,
                        fontWeight: FontWeight.w500,
                        fontSize: 30),
                  )),
              Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    'Sign in',
                    style: TextStyle(fontSize: 20),
                  )),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'User Name',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: TextField(
                  obscureText: true,
                  controller: passwordController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: TextField(
                  obscureText: true,
                  controller: repasswordController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Confirm Password',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 20
                ),
                child: Container(
                    height: 50,
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: ElevatedButton(
                      child: const Text('Sing in'),
                      onPressed: () {
                        check(mail: nameController.text, pass: passwordController.text, repass: repasswordController.text);
                        print(nameController.text);
                        print(passwordController.text);
                      },
                    )
                ),
              ),
              Row(
                children: <Widget>[
                  const Text('I have alredy account?'),
                  TextButton(
                    child: const Text(
                      'Log in',
                      style: TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                      //signup screen
                    },
                  )
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            ],
          )),
    );
  }
  void check({required String? mail, required String? pass , required String? repass}){
    if (mail!.isEmpty || pass!.isEmpty || repass!.isEmpty ){
      print( "fild is empty");
    } else{
      if(pass == repass){
        print("Sing in stating");
        Auth a2 = Auth();
        a2.Singup(mail, pass,context);
      }else{
        print("Pass not metch");
      }
    }
  }
}