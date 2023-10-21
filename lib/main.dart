import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: Column(
        children: <Widget>[
          Image.asset('assets/images/TopCurve.png'),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom: 30),
                  child: Image.asset('assets/images/logo.png'),
                ),
                SizedBox(height: 20), // Add some spacing
                Center(
                  child: Column(
                    children: [
                      Text(
                        "Share your business",
                        style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        "card easily",
                        style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 350, // Set the width of the container to full width
                  margin: EdgeInsets.only(top: 60),
                  child: SizedBox(
                    width: 700, // Set the width of the SizedBox to full width
                    child: ElevatedButton(
                      onPressed: () {
                        // Handle button click
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF23233C)),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0), // 20px border radius
                          ),
                        ),
                        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                          EdgeInsets.symmetric(vertical: 15), // 5px padding top and bottom
                        ),
                      ),
                      child: Text(
                        'Log In',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20, // Adjust the font size as needed
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                )
                ,

              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset('assets/images/BottomCurv.png'),
          ),
        ],
      ),
    );
  }
}
