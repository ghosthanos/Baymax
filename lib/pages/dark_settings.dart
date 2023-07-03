import 'dart:ffi';

import 'package:baymax/pages/settings.dart';
import 'package:baymax/screens/ambulance.dart';
import 'package:baymax/screens/appointment.dart';
import 'package:baymax/screens/carousal.dart';
import 'package:baymax/screens/chatbot.dart';
import 'package:baymax/pages/darkhomepage.dart';
import 'package:baymax/screens/prescription.dart';
import 'package:flutter/material.dart';

class DarkSettings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(18, 18, 18, 1),
      body: Column(
        children: [
          Material(
            color: Color.fromRGBO(18, 18, 18, 1),
            child: Padding(
              padding: const EdgeInsets.only(top: 68.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: 10),
                  CircleAvatar(
                    backgroundImage: AssetImage('images/profile_pic.jpg'),
                    radius: 35,
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Vignesh',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white.withOpacity(0.67),
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      Text(
                        'kvignesh04062002@gmail.com',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white.withOpacity(0.67),
                          fontFamily: 'Poppins',
                        ),
                      ),
                      // Additional Text widgets or content here
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20),
            child: Container(
              color: Color.fromRGBO(32, 32, 32, 1).withOpacity(0.2),
              height: 70,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.account_circle,
                    size: 35,
                    color: Colors.white.withOpacity(0.67),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Profile',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Colors.white.withOpacity(0.67),
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20),
            child: Container(
              color: Color.fromRGBO(32, 32, 32, 1).withOpacity(0.2),
              height: 70,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.light,
                    size: 35,
                    color: Colors.white.withOpacity(0.67),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Lightmode',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Colors.white.withOpacity(0.67),
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(width: 95),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          transitionDuration: Duration(milliseconds: 220),
                          pageBuilder: (_, __, ___) => Settings(),
                          transitionsBuilder: (_, animation, __, child) {
                            return FadeTransition(
                              opacity: animation,
                              child: child,
                            );
                          },
                        ),
                      );
                    },
                    icon: Icon(
                      Icons.sunny,
                      color: Colors.white.withOpacity(0.67),
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20),
            child: Container(
              color: Color.fromRGBO(32, 32, 32, 1).withOpacity(0.2),
              height: 70,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.notifications,
                    size: 35,
                    color: Colors.white.withOpacity(0.67),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Notifications',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Colors.white.withOpacity(0.67),
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
