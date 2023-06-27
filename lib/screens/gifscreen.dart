import 'package:flutter/material.dart';

class GifScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(108, 5, 7, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // GIF Widget
            Expanded(
              child: Image.asset(
                  'images/Big Hero 6 Photo_ Baymax.gif', // Replace 'your_gif.gif' with the path to your GIF file
                  fit: BoxFit.cover // Fit the GIF to the screen
                  ),
            ),
            // TextButton
          ],
        ),
      ),
    );
  }
}
