import 'package:flutter/material.dart';

class VideoCards extends StatefulWidget {
  const VideoCards({Key? key}) : super(key: key);

  @override
  State<VideoCards> createState() => _VideoCardsState();
}

class _VideoCardsState extends State<VideoCards> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              child: Image(image: AssetImage("assets/vdo_pic/oo1.jpg")),
            ),
            Positioned(
                child: Container(
              child: Text("12.00"),
              padding: EdgeInsets.all(4.0),
            ))
          ],
        ),
      ],
    );
  }
}
