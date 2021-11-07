import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Assignment Title',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: UiScreen(),
    );
  }
}

class UiScreen extends StatefulWidget {
  const UiScreen({Key? key}) : super(key: key);

  @override
  _UiScreenState createState() => _UiScreenState();
}

class _UiScreenState extends State<UiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(title: Text("UI Design Assignment")),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage("assets/images/ui_pic.jpg"),
              ),
              SizedBox(
                height: 20,
              ),
              // Image.asset(
              //   "assets/images/ui_pic.jpg",
              //   height: 150,
              //   width: 150,
              // ),
              Text(
                "UserName",
                style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Flutter Developer",
                style: TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                    decoration: TextDecoration.underline),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(prefixIcon: Icon(Icons.email)),
                controller: TextEditingController(text: "test@gmail.com"),
              ),
              TextField(
                decoration: InputDecoration(prefixIcon: Icon(Icons.phone)),
                controller: TextEditingController(text: "071234567"),
              ),
            ],
          ),
        ));
  }
}
