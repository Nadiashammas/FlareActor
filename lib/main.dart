import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:ineedteacherapp/screens/SecondScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: ListTile(
              dense: true,
              title: Text("Are you Ready to Learn !!"),
              trailing: Stack(
                children: [
                  Icon((Icons.notifications_none)),
                  Positioned(
                    top: 3,
                    right: 2,
                    child: Container(
                      width: 9,
                      height: 9,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: ListTile(
              dense: true,
              leading: Stack(
                children: [
                  Icon((Icons.menu)),
                ],
              ),
              title: TextField(
                decoration: InputDecoration(hintText: "find your lesson!"),
              ),
              trailing: Stack(
                children: [
                  Icon(
                    (Icons.search),
                    color: Colors.teal,
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 400,
            height: 400,
            child: FlareActor(
              "images/Teddy.flr",
              alignment: Alignment.center,
              fit: BoxFit.contain,
              animation: "idle",

              //animation : test / fail / success / idle
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 25,
        splashColor: Colors.pink,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SecondScreen()),
          );
        },
        child: Text("let's\n Go!"),
      ),
    );
  }
}
