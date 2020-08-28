import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Register page',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Register page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  
final String title;
  MyHomePage({Key key, this.title}) : super(key: key);
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

class _MyHomePageState extends State<MyHomePage> {

  String username;
  String firstname;
  String lastname;
  String phone;
  String email;
  String password;
@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text(widget.title),
    ),
    body: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
            child: Divider(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Username',
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue,
                  )
                ),
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  username = value;
                });
              }
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Firstname',
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue,
                  )
                ),
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  firstname = value;
                });
              }
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Lastname',
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue,
                  )
                ),
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  lastname = value;
                });
              }
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Phone',
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue,
                  )
                ),
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  phone = value;
                });
              }
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue,
                  )
                ),
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  email = value;
                });
              }
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Password',
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue,
                  )
                ),
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  password = value;
                });
              }
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: MaterialButton(
              child: Text('Register', 
              style: TextStyle(
                color: Colors.white,
              ),),
              color: Colors.blue,
              onPressed: () {
                print(username);
                print(firstname);
                print(lastname);
                print(phone);
                print(email);
                print(password);
              },
            )
          )
        ]
      )
    )
  );
}}
