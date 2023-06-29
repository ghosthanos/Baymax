import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBar(
          title: Text('Welcome Back!'),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              size: 30,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Icon(
                Icons.adb,
                size: 30,
              ),
            ),
          ],
          backgroundColor: Color.fromRGBO(173, 22, 31, 1),
          elevation: 0,
        ),
      ),
      backgroundColor: const Color.fromRGBO(173, 22, 31, 1),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            const SizedBox(
              height: 150,
            ),
            Text(
              'Welcome Back!',
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 300),
              child: SizedBox(
                height: 150,
                width: 150,
                child: FloatingActionButton(
                  child: Icon(
                    Icons.adb,
                    size: 100,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
