import 'package:crowdeyes_website/page/home_page.dart';
import 'package:crowdeyes_website/page/player_recommendation_page.dart';
import 'package:crowdeyes_website/page/player_status_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CrowdEyes Project',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const HomePage(),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Column(
              children: const [
                Text("CrowdEyes")
              ],
            ),
            bottom: const TabBar(
                tabs: [
                  SizedBox(
                    height: 50,
                    child: Center(
                      child: Text("首頁"),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    child: Center(
                      child: Text("球員推薦"),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    child: Center(
                      child: Text("球員戰情室"),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    child: Center(
                      child: Text("問答遊戲"),
                    ),
                  ),
                ],
            ),
          ),
          body: const TabBarView(
              children: [
                HomePage(),
                PlayerRecommendationPage(),
                PlayerStatusPage(),
                HomePage(),
              ]
          ),
        ),
      ),
    );
  }
}