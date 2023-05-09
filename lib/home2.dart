import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:liveasy_project_01/utils/sharedPref.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {


String acType = "";
FirebaseAuth auth = FirebaseAuth.instance;
  User? user;

  @override
  void initState() {

    checkUser();

    // TODO: implement initState
    super.initState();
  }


  @override
  Widget build(BuildContext context) {

    double widthThis = MediaQuery.of(context).size.width;
    double heightThis = MediaQuery.of(context).size.height;

    double heightTopThis = MediaQuery.of(context).padding.top;
    double heightBottomThis = MediaQuery.of(context).padding.bottom;


    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: widthThis,
          child: Column(
            children: [


              const SizedBox(
                height: 100,
              ),

              Text(
                "My Details...",
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
              Text(
                "UID: ${user!.uid}",
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
              Text(
                "phoneNumber: ${user!.phoneNumber}",
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
              Text(
                "displayName: ${user!.displayName}",
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),

              Text(
                "A/C Type: $acType",
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }

  Future<void> checkUser() async {
    acType = await readText("ac_type");
    setState(() {
      user = FirebaseAuth.instance.currentUser;
    });
  }
}
