import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:liveasy_project_01/home2.dart';
import 'package:liveasy_project_01/utils/sharedPref.dart';
import 'package:liveasy_project_01/utils/toast.dart';

class ChoseType extends StatefulWidget {
  const ChoseType({Key? key}) : super(key: key);

  @override
  State<ChoseType> createState() => _ChoseTypeState();
}

class _ChoseTypeState extends State<ChoseType> {


  int selectedRadio=0;


  @override
  Widget build(BuildContext context) {

    double widthThis = MediaQuery.of(context).size.width;
    double heightThis = MediaQuery.of(context).size.height;

    double heightTopThis = MediaQuery.of(context).padding.top;
    double heightBottomThis = MediaQuery.of(context).padding.bottom;


    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [


            const SizedBox(
              height: 100,
            ),

            const Text(
              "Please enter your mobile number",
              style: TextStyle(
                color: Colors.black,
                fontSize: 21,
                fontWeight: FontWeight.bold,
              ),
            ),


            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xFF2E3B62),
                      width: 2.0,
                    )),

                child: SizedBox(
                  child: ListTile(
                    onTap: () {
                      setState(() {
                        selectedRadio = 1;
                      });
                    },
                    leading: Radio(
                      value: 1,
                      groupValue: selectedRadio,
                      onChanged: (val) {
                        setState(() {
                          selectedRadio = 1;
                        });
                      },
                      activeColor: Colors.red,
                    ),
                    // title: Text("_foundHerbs[index]['name']"),
                    title: Row(
                      children: [
                        SvgPicture.asset(
                          width: 50,
                          "assets/svg/shipper.svg",
                          fit: BoxFit.fill,
                        ),
                        const SizedBox(width: 10,),
                        SizedBox(
                          width: widthThis-10-50-100-16,
                          child: Column(
                            children: const [
                              SizedBox(
                                width: double.infinity,
                                child: Text(
                                  "Shipper",
                                  textAlign: TextAlign.left,
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,

                                  style: TextStyle(
                                    fontSize: 21,
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: double.infinity,
                                child: Text(
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing",
                                  textAlign: TextAlign.left,
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Color(0xFF6A6C7B),
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xFF2E3B62),
                      width: 2.0,
                    )),

                child: SizedBox(
                  child: ListTile(
                    onTap: () {
                      setState(() {
                        selectedRadio = 2;
                      });
                      },
                    leading: Radio(
                      value: 2,
                      groupValue: selectedRadio,
                      onChanged: (val) {
                        setState(() {
                          selectedRadio = 2;
                        });
                      },
                      activeColor: Colors.red,
                    ),
                    // title: Text("_foundHerbs[index]['name']"),
                    title: Row(
                      children: [
                        SvgPicture.asset(
                          width: 50,
                          "assets/svg/transporter.svg",
                          fit: BoxFit.fill,
                        ),
                        const SizedBox(width: 10,),
                        SizedBox(
                          width: widthThis-10-50-100-16,
                          child: Column(
                            children: const [
                              SizedBox(
                                width: double.infinity,
                                child: Text(
                                  "Transporter",
                                  textAlign: TextAlign.left,
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,

                                  style: TextStyle(
                                    fontSize: 21,
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: double.infinity,
                                child: Text(
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing",
                                  textAlign: TextAlign.left,
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Color(0xFF6A6C7B),
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                ),
              ),
            ),

            const SizedBox(
              height: 10,
            ),
            GestureDetector(


              onTap: () {
                if(selectedRadio==1){
                  saveText("ac_type", "Shipper");
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Home()),
                  );
                }else if(selectedRadio==2){
                  saveText("ac_type", "Transporter");
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Home()),
                  );
                }else{
                  warningToast("Error...", "Select any one...", context);
                }

              },
              child: Container(
                color: const Color(0xFF2E3B62),
                width: widthThis - 100,
                height: 70,
                child: const Center(
                  child: Text(
                    "VERIFY AND CONTINUE",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),



          ],
        ),
      ),
    );
  }
}
