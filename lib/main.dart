import 'package:flutter/material.dart';
import 'package:home_cleaning/screen/calendar_page_screen.dart';
import 'package:home_cleaning/screen/main_page_screen.dart';
import 'package:home_cleaning/util/ColorScheme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'ubuntu'),
      home: MyHomePage(),
      routes: {
        '/mainPage': (context) => MainPageScreen(),
      },
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
      backgroundColor: purple,
      body: Column(
        children: [
          Container(
            height: 50,
            width: 100,
            margin: EdgeInsets.only(top: 40),
            decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage('assets/images/logo.png')),
            ),
          ),
          SizedBox(height: 30),
          Text(
            'Clean Home\nClean Life',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 35, color: Colors.white, fontWeight: FontWeight.w800),
          ),
          SizedBox(height: 30),
          Text(
            'Book Cleans At The Comfort \nOf Your Home',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 18, color: Colors.white, fontWeight: FontWeight.w400),
          ),
          SizedBox(height: 40),
          Container(
            height: 350,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/splash.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(child: Container()),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: openPage,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 60, vertical: 30),
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(20)),
                    color: Colors.white,
                  ),
                  child: Text(
                    'Continue',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.purple,
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  void openPage() {
    Navigator.pushNamed(context, '/mainPage');
  }
}
