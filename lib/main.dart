import 'dart:async';

import 'package:callender/Hide/Hepling.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'Hide/Authantication/auth_cantroller.dart';
import 'HomePage.dart';
import 'package:google_fonts/google_fonts.dart';


 Future<void> main() async {
   WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp(

   ).whenComplete(() => () {});
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.latoTextTheme(textTheme).copyWith(
          bodyMedium: GoogleFonts.oswald(textStyle: textTheme.bodyMedium),
        ),
        primarySwatch: Colors.purple,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    chek();
    return Scaffold(
      body: Stack(
        children: [
          EasySplashScreen(
            logo: Image.asset("assets/logo.png"),
            title: Text(
              "Viks'b",
              style:

             TextStyle(fontSize: 18,
                fontWeight: FontWeight.bold,),
            ),
            backgroundColor: Colors.grey.shade400,
            showLoader: true,
            loadingText: Text("Loading..."),
            navigator: HomePage(),
            durationInSeconds: 5,
          ),
        ],
      ),
    );
  }
  void chek() {
    if (Auth().user(context) == true) {
      print("User is truu");
      hepling.isLoged = true;
    } else {
      print("User is  not found");
    }
  }
}
