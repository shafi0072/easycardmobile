import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = ''; // State variable to store email
  String password = ''; // State variable to store password

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Container(
        color: Colors.grey[200],
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Image.asset('assets/images/TopCurve.png'),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    child: const Text(
                      "Welcome",
                      style: TextStyle(fontSize: 35, fontWeight: FontWeight.w700),
                    ),
                  ),
                  SizedBox(height: 25),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFFCCCCCC),
                          blurRadius: 20,
                          spreadRadius: 0,
                          offset: Offset(0, 0),
                        ),
                      ],
                    ),
                    width: 350,
                    height: 60,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Center(
                        child: TextField(
                          onChanged: (value) {
                            setState(() {
                              email = value; // Update the email state variable
                            });
                          },
                          decoration: InputDecoration(
                            hintText: 'Enter your email',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFFCCCCCC),
                          blurRadius: 20,
                          spreadRadius: 0,
                          offset: Offset(0, 0),
                        ),
                      ],
                    ),
                    width: 350,
                    height: 60,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Center(
                        child: TextField(
                          onChanged: (value) {
                            setState(() {
                              password = value; // Update the password state variable
                            });
                          },
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: 'Enter your password',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    child: Text("Forget your password?"),
                  ),
                  Container(
                    width: 350,
                    margin: const EdgeInsets.only(top: 30, bottom: 20),
                    child: SizedBox(
                      width: 700,
                      child: ElevatedButton(
                        onPressed: () {
                         print(email);
                         print(password);
                        },
                        style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xFF23233C)),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                            const EdgeInsets.symmetric(vertical: 15),
                          ),
                        ),
                        child: const Text(
                          'Log In',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Text.rich(
                      TextSpan(
                        text: 'By continuing you agree to the ',
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Privacy Policy &\nTerms of Service.',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.black,
                              decorationThickness: 1.5,
                            ),
                          ),
                        ],
                      ),
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/facebook.png'),
                          Image.asset('assets/images/google.png'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset('assets/images/BottomCurv.png'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
