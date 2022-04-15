import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube/screens/search_screen.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      backgroundColor: Colors.white,
      leadingWidth: 120,
      leading: Image(
        image: AssetImage("assets/logo/utube_logo.png"),
        fit: BoxFit.cover,
      ),
      actions: [
        IconButton(
            onPressed: () {}, icon: Icon(Icons.cast), color: Colors.black),
        IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_none),
            color: Colors.black),
        IconButton(
            onPressed: () {
              showSearch(context: context, delegate: DataSearch());
            },
            icon: Icon(Icons.search),
            color: Colors.black),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: CircleAvatar(
            radius: 15,
            backgroundImage: AssetImage("assets/images/karun02.jpg"),
          ),
        )
      ],
    );
  }
}
