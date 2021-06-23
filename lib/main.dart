import 'package:flutter/material.dart';
import 'package:youtube_ui/bottom_navigation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Youtube UI',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget cutsomvideos(String asset, String title) {
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Image.asset(asset),
            Positioned.fill(
              bottom: 10.0,
              right: 10.0,
              child: Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  color: Colors.black,
                  padding: EdgeInsets.all(4.0),
                  child: Text(
                    "20:10",
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 5.0,
        ),
        Container(
          color: Colors.black,
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('images/flutter.jpg'),
            ),
            title: Text(
              "$title",
              textAlign: TextAlign.start,
              style: TextStyle(color: Colors.white),
            ),
            subtitle: Row(
              children: [
                Text(
                  "Google",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(Icons.verified_rounded, color: Colors.white, size: 15),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "2.3M Views - 1 Week",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            trailing: Icon(Icons.more_vert, color: Colors.white),
          ),
        ),
        SizedBox(
          height: 10.0,
          child: Container(
            color: Colors.black,
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: Row(
            children: [
              Image.asset(
                "images/logo.png",
                height: 30,
                width: 30,
              ),
              SizedBox(
                width: 10,
              ),
              Text("Youtube"),
              Spacer(),
              Icon(Icons.search, color: Colors.white),
              SizedBox(
                width: 15,
              ),
              Icon(
                Icons.settings_voice,
                color: Colors.white,
              ),
              SizedBox(
                width: 15,
              ),
              Icon(
                Icons.settings,
                color: Colors.white,
              )
            ],
          ),
          centerTitle: true,
        ),
        bottomNavigationBar: bottomappbar,
        body: SingleChildScrollView(
          child: Column(
            children: [
              cutsomvideos("images/image1.png", "Flutter and Dart"),
              cutsomvideos("images/image2.png", "Flutter and Firebase"),
              cutsomvideos("images/image1.png", "Flutter and Dart"),
              cutsomvideos("images/image2.png", "Flutter and Dart"),
              cutsomvideos("images/image1.png", "Flutter and Dart"),
            ],
          ),
        ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
