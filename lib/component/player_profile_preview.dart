import 'package:flutter/cupertino.dart';

class PlayerProfilePreview extends StatelessWidget{
  final String player;
  final String profile;
  final String position;
  final String imagePath;
  const PlayerProfilePreview({super.key, required this.player, required this.profile, required this.position, required this.imagePath});

  @override
  Widget build(BuildContext context){
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imagePath),
          Text(player),
          Text(profile),
          Text(position),
        ],
      ),
    );
  }
}