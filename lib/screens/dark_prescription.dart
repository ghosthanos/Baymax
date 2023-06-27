import 'package:baymax/pages/darkhomepage.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class DarkPrescriptionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(18, 18, 18, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(18, 18, 18, 1),
        shadowColor: Color.fromRGBO(128, 45, 83, 1),
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
          color: Color.fromRGBO(173, 22, 31, 1),
          iconSize: 37,
        ),
        centerTitle: true,
        title: Text(
          "Take your Meds",
          style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(173, 22, 31, 1),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.account_circle,
              size: 37,
              color: Color.fromRGBO(173, 22, 31, 1),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DarkHome(),
                ),
              );
            },
          ),
        ],
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(7, (index) {
          DateTime currentDate = DateTime.now().add(Duration(days: index));
          String dayOfWeek = DateFormat('EEE').format(currentDate);
          String dateOfMonth = DateFormat('d').format(currentDate);
          bool isCurrentDate = index == 0; // Check if it's the current date

          return Padding(
            padding: const EdgeInsets.only(top: 18.0),
            child: Column(
              children: [
                Text(
                  dayOfWeek,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: isCurrentDate
                        ? Color.fromRGBO(173, 22, 31, 1)
                        : Color.fromARGB(255, 111, 111, 111),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: isCurrentDate
                        ? Color.fromRGBO(173, 22, 31, 1)
                        : Colors.transparent,
                  ),
                  child: Center(
                    child: Text(
                      dateOfMonth,
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold,
                        color: isCurrentDate
                            ? Colors.white
                            : const Color.fromARGB(255, 111, 111, 111),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
