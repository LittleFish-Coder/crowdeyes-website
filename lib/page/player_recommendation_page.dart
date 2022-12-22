import 'package:crowdeyes_website/component/player_profile_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PlayerRecommendationPage extends StatefulWidget {
  const PlayerRecommendationPage({super.key});

  @override
  State<PlayerRecommendationPage> createState() => _PlayerRecommendationPageState();
}

class _PlayerRecommendationPageState extends State<PlayerRecommendationPage> {

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("選擇你喜歡的球員"),
              Wrap(
                direction: Axis.horizontal,
                spacing: 10,
                children: [
                  PlayerProfilePreview(player: '布萊恩', profile: '1997/10/10 | 195cm | 80kg', position: '邊線攻擊球員', imagePath: 'assets/images/player1.jpg',),
                  PlayerProfilePreview(player: '劉鴻杰', profile: '1993/11/10 | 190cm | 88kg', position: '中間籃網球員', imagePath: 'assets/images/player2.jpg',),
                  PlayerProfilePreview(player: '呂姜耀凱', profile: '1993/10/23 | 195cm | 88kg', position: '中間籃網球員', imagePath: 'assets/images/player3.jpg',),
                  PlayerProfilePreview(player: '劉鴻敏', profile: '1993/11/10 | 191cm | 86kg', position: '邊線攻擊球員', imagePath: 'assets/images/player4.jpg',),
                ],
              ),
            ],
          ),
        ),
      ),

      floatingActionButton: const FloatingActionButton(
        tooltip: 'chatroom',
        onPressed: null,
        child: Icon(Icons.message),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

}
