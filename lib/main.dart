import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Hello World",
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Flutter App"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            height: 600,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "This is The Earth",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 80,
                ),
                Image.network(
                    'https://freepngimg.com/thumb/earth/7-2-earth-png-pic-thumb.png'),
                SizedBox(
                  height: 30,
                ),
                Text(
                  isPressed ? "This is our home." : "",
                  style: TextStyle(color: Colors.blue),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 8,
        child: Icon(Icons.arrow_forward),
        onPressed: () {
          setState(() {
            isPressed = true;
          });
        },
      ),
    );
  }
}
