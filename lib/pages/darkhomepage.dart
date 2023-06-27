import 'dart:ffi';

import 'package:baymax/pages/homepage.dart';
import 'package:baymax/screens/ambulance.dart';
import 'package:baymax/screens/appointment.dart';
import 'package:baymax/screens/chatbot.dart';
import 'package:baymax/screens/dark_prescription.dart';
import 'package:baymax/screens/prescription.dart';
import 'package:flutter/material.dart';

List<String> iconPaths = [
  "icons/calendar-lines.png",
  "icons/user-robot.png",
  "icons/capsules.png",
  "icons/ambulance.png",
];
List<String> textList = [
  "Appointments",
  "ChatBot",
  "Prescription",
  "Ambulance",
];

class DarkHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(18, 18, 18, 1),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromRGBO(18, 18, 18, 1),

        type: BottomNavigationBarType.fixed, // Set the type to fixed

        onTap: (index) {
          if (index == 0) {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DarkHome(),
                ));
          }
          if (index == 1) {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DarkHome(),
                ));
          }
          if (index == 2) {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DarkHome(),
                ));
          }
          if (index == 3) {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DarkHome(),
                ));
          }
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 30,
              color: Color.fromRGBO(204, 46, 52, 1),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.calendar_month,
              size: 30,
              color: Color.fromRGBO(204, 46, 52, 1),
            ),
            label: 'Appointments',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle,
              size: 30,
              color: Color.fromRGBO(204, 46, 52, 1),
            ),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              size: 30,
              color: Color.fromRGBO(204, 46, 52, 1),
            ),
            label: 'Settings',
          ),
        ],
        selectedItemColor: Color.fromRGBO(204, 46, 52, 1),
        unselectedItemColor: Color.fromRGBO(204, 46, 52, 1),
      ),
      body: Material(
        color: Color.fromRGBO(18, 18, 18, 1),
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 5.0,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(18, 18, 18, 1),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.elliptical(30, 20),
                    bottomRight: Radius.elliptical(30, 20),
                  ),
                ),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.07,
                          left: 0,
                          right: MediaQuery.of(context).size.width * 0.08,
                        ),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Text(
                                "Hello",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromRGBO(204, 46, 52, 1),
                                ),
                              ),
                            ),
                            SizedBox(height: 5),
                            Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Text(
                                "Vignesh",
                                style: TextStyle(
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(204, 46, 52, 1),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.08,
                          left: MediaQuery.of(context).size.width * 0.315,
                        ),
                        child: Container(
                          width: 45,
                          height: 45,
                          child: FloatingActionButton(
                            elevation: 0,
                            backgroundColor: Color.fromRGBO(18, 18, 18, 1),
                            child: Icon(
                              Icons.sunny,
                              size: 40,
                              color: Color.fromRGBO(173, 22, 31, 1),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                PageRouteBuilder(
                                  transitionDuration:
                                      const Duration(milliseconds: 270),
                                  transitionsBuilder: (context, animation,
                                      secondaryAnimation, child) {
                                    return FadeTransition(
                                      opacity: animation,
                                      child: child,
                                    );
                                  },
                                  pageBuilder:
                                      (context, animation, secondaryAnimation) {
                                    return Home();
                                  },
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    child: Container(
                      margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.02,
                        bottom: MediaQuery.of(context).size.height * 0.025,
                      ),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.0,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(32, 32, 32, 1),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 5,
                            spreadRadius: 5,
                            color: Colors.black.withOpacity(0.2),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 2.0, bottom: 2),
                        child: TextFormField(
                          cursorColor: Color.fromRGBO(204, 46, 52, 1),
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search",
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 18.1,
                            ),
                            prefixIcon: Icon(
                              Icons.search,
                              size: 25,
                              color: Color.fromRGBO(204, 46, 52, 1),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  // SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.01),
                        for (int i = 0; i < iconPaths.length; i++)
                          _buildIconButton(context, iconPaths[i], textList[i]),
                      ],
                    ),
                  ),
                  SizedBox(height: 40),
                  Container(
                    width: MediaQuery.of(context).size.width / 1.15,
                    height: MediaQuery.of(context).size.height / 5.15,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(204, 35, 41, 1),
                      borderRadius: BorderRadius.all(
                        Radius.elliptical(20, 20),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Take your Meds',
                          style: TextStyle(
                            color: Color.fromARGB(255, 202, 200, 200),
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        SizedBox(height: 30),
                        SizedBox(
                          width: 260,
                          height: 60,
                          child: Container(
                            decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  colors: [
                                    Color.fromRGBO(173, 22, 31, 0.7),
                                    Color.fromRGBO(173, 22, 31, 0.7),
                                    Color.fromRGBO(247, 73, 79, 0.698),
                                    Color.fromRGBO(173, 22, 31, 0.7),
                                    Color.fromRGBO(173, 22, 31, 0.7),
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromARGB(0, 71, 71, 71)
                                        .withOpacity(0.2),
                                    blurRadius: 10,
                                    spreadRadius: 1,
                                    offset: Offset(0, 7),
                                  )
                                ]),
                            child: const Center(
                              child: Row(
                                children: [
                                  SizedBox(width: 10),
                                  Icon(
                                    Icons.medical_information,
                                    color: Color.fromARGB(255, 202, 200, 200),
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    'Dolo 650,',
                                    style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 202, 200, 200),
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(width: 25),
                                  Icon(
                                    Icons.access_time,
                                    color: Color.fromARGB(255, 202, 200, 200),
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    "11:00-12:00",
                                    style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 202, 200, 200),
                                      fontSize: 16,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),

                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      color: Color.fromRGBO(18, 18, 18, 1),
                      width: 900,
                      height: 150,
                      child: Row(
                        children: [
                          SizedBox(width: 15),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                color: Color.fromRGBO(245, 188, 220, 1),
                                width: 200,
                                child: const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 15.0),
                                      child: Row(
                                        children: [
                                          Text(
                                            "   Heart Rate",
                                            style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.bold,
                                              color:
                                                  Color.fromRGBO(17, 17, 16, 1),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 60.0, bottom: 20),
                                            child: Icon(
                                              Icons.favorite,
                                              size: 25,
                                              color: Color.fromRGBO(
                                                  235, 31, 147, 1),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "   85",
                                          style: TextStyle(
                                            fontSize: 40,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.bold,
                                            color:
                                                Color.fromRGBO(17, 17, 16, 1),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: 9.0),
                                          child: Text(
                                            " bpm",
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.bold,
                                              color:
                                                  Color.fromRGBO(17, 17, 16, 1),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    /*  SizedBox(height: 8),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        ),
                                        SizedBox(width: 5),
                                        Text(
                                          "4.9",
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.blue.withOpacity(0.6),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )
                                      ],
                                    ) */
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 7),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                color: Color.fromRGBO(193, 171, 249, 1),
                                width: 200,
                                child: const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 15.0),
                                      child: Row(
                                        children: [
                                          Text(
                                            "   Sleep                 ",
                                            style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.bold,
                                              color:
                                                  Color.fromRGBO(17, 17, 16, 1),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 30.0, bottom: 20),
                                            child: Icon(
                                              Icons.bed,
                                              size: 25,
                                              color: Color.fromRGBO(
                                                  102, 20, 178, 1),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "   8:00",
                                          style: TextStyle(
                                            fontSize: 40,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.bold,
                                            color:
                                                Color.fromRGBO(17, 17, 16, 1),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: 9.0),
                                          child: Text(
                                            " h",
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.bold,
                                              color:
                                                  Color.fromRGBO(17, 17, 16, 1),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    /*  SizedBox(height: 8),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        ),
                                        SizedBox(width: 5),
                                        Text(
                                          "4.9",
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.blue.withOpacity(0.6),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )
                                      ],
                                    ) */
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 7),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                color: Color.fromRGBO(171, 227, 249, 1),
                                width: 200,
                                child: const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 15.0),
                                      child: Row(
                                        children: [
                                          Text(
                                            "   Weight",
                                            style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.bold,
                                              color:
                                                  Color.fromRGBO(17, 17, 16, 1),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 90.0, bottom: 20),
                                            child: Icon(
                                              Icons.scale,
                                              size: 25,
                                              color: Color.fromRGBO(
                                                  20, 141, 178, 1),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "   87",
                                          style: TextStyle(
                                            fontSize: 40,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.bold,
                                            color:
                                                Color.fromRGBO(17, 17, 16, 1),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: 9.0),
                                          child: Text(
                                            " kg",
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.bold,
                                              color:
                                                  Color.fromRGBO(17, 17, 16, 1),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    /*  SizedBox(height: 8),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        ),
                                        SizedBox(width: 5),
                                        Text(
                                          "4.9",
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.blue.withOpacity(0.6),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )
                                      ],
                                    ) */
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 7),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                color: Color.fromRGBO(249, 249, 171, 1),
                                width: 200,
                                child: const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 15.0),
                                      child: Row(
                                        children: [
                                          Text(
                                            "   Weight",
                                            style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.bold,
                                              color:
                                                  Color.fromRGBO(17, 17, 16, 1),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 90.0, bottom: 20),
                                            child: Icon(
                                              Icons.accessibility,
                                              size: 25,
                                              color: Color.fromRGBO(
                                                  178, 170, 20, 1),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "   190",
                                          style: TextStyle(
                                            fontSize: 40,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.bold,
                                            color:
                                                Color.fromRGBO(17, 17, 16, 1),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: 9.0),
                                          child: Text(
                                            " cm",
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.bold,
                                              color:
                                                  Color.fromRGBO(17, 17, 16, 1),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    /*  SizedBox(height: 8),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        ),
                                        SizedBox(width: 5),
                                        Text(
                                          "4.9",
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.blue.withOpacity(0.6),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )
                                      ],
                                    ) */
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildIconButton(BuildContext context, String iconPath, String text) {
    return GestureDetector(
      onTap: () {
        // Navigate to the desired screen
        if (text == "Appointments") {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => DarkHome()));
        } else if (text == "ChatBot") {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => ChatBotScreen()));
        } else if (text == "Prescription") {
          Navigator.push(context,
              MaterialPageRoute(builder: (_) => DarkPrescriptionScreen()));
        } else if (text == "Ambulance") {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => AmbulanceScreen()));
        }
      },
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(32, 32, 32, 1),
              borderRadius: BorderRadius.circular(50),
            ),
            child: SizedBox(
              height: MediaQuery.of(context).size.width * 0.18,
              width: MediaQuery.of(context).size.width * 0.18,
              child: IconButton(
                onPressed: null,
                icon: SizedBox(
                  child: ImageIcon(
                    AssetImage(iconPath),
                    color: Color.fromRGBO(204, 46, 52, 1),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey, // Change the text color here
            ),
          ),
        ],
      ),
    );
  }
}
