import 'package:baymax/components/my_button.dart';
import 'package:baymax/components/my_textfield.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class Login extends StatefulWidget {
  Login({super.key});

  @override
  State<Login> createState() => _LoginPageState();
}

class _LoginPageState extends State<Login> {
  // text editing controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  // sign user in method
  void signUserIn() async {
    // show loading circle
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );

    // try sign in
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      // pop the loading circle
      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      // pop the loading circle
      Navigator.pop(context);
      // WRONG EMAIL
      if (e.code == 'user-not-found') {
        // show error to user
        wrongEmailMessage();
      }

      // WRONG PASSWORD
      else if (e.code == 'wrong-password') {
        // show error to user
        wrongPasswordMessage();
      }
    }
  }

  // wrong email message popup
  void wrongEmailMessage() {
    showDialog(
      context: context,
      builder: (context) {
        return const AlertDialog(
          backgroundColor: Color(0xff5ac18e),
          title: Center(
            child: Text(
              'Incorrect Email',
              style: TextStyle(color: Colors.white),
            ),
          ),
        );
      },
    );
  }

  // wrong password message popup
  void wrongPasswordMessage() {
    showDialog(
      context: context,
      builder: (context) {
        return const AlertDialog(
          backgroundColor: Colors.blue,
          title: Center(
            child: Text(
              'Incorrect Password',
              style: TextStyle(color: Colors.white),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/IMG_7949.PNG'),
                fit: BoxFit.cover,
              ),
            ),
            child: SafeArea(
              child: SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: constraints.maxHeight,
                  ),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: IntrinsicHeight(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          /* SizedBox(height: 50),
                          Image.asset('images/IMG_7945 2.PNG'),
                          */
                          SizedBox(height: 200),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            /*   child: GradientText(
                              'HELLO',
                              style: const TextStyle(
                                fontSize: 20.0,
                              ),
                              colors: const [
                                Color.fromRGBO(67, 236, 227, 1),
                                Color.fromRGBO(20, 188, 233, 1)
                              ],
                            ), */
                          ),
                          SizedBox(height: 20),
                          MyTextField(
                            controller: emailController,
                            hintText: 'Email',
                            obscureText: false,
                          ),
                          SizedBox(height: 10),
                          MyTextField(
                            controller: passwordController,
                            hintText: 'Password',
                            obscureText: true,
                          ),
                          SizedBox(height: 10),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 25.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'Forgot Password?',
                                  style: TextStyle(
                                    color: Color.fromRGBO(173, 22, 31, 1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 25),
                          MyButton(
                            onTap: signUserIn,
                          ),
                          SizedBox(height: 50),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 25.0),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Divider(
                                    thickness: 2,
                                    color: Color.fromRGBO(173, 22, 31, 1),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0),
                                  child: Text(
                                    'Or continue with',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromRGBO(173, 22, 31, 1),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Divider(
                                    thickness: 2,
                                    color: Color.fromRGBO(173, 22, 31, 1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 50),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Not a member?',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(173, 22, 31, 1),
                                ),
                              ),
                              SizedBox(width: 4),
                              GradientText(
                                'Register now',
                                style: TextStyle(
                                  fontSize: 20.0,
                                ),
                                colors: [
                                  Color.fromRGBO(173, 22, 31, 1),
                                  Color.fromRGBO(173, 22, 31, 1),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
