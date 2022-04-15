import 'package:flutter/material.dart';
export 'package:youtube/datas/data.dart';

class VideoList {
  final String username;
  final String userpic;
  final AssetImage vdopic;
  final String title;
  final String subtitle;
  final String duration;
  const VideoList(
      {required this.username,
      required this.userpic,
      required this.vdopic,
      required this.title,
      required this.subtitle,
      required this.duration});
}

final List<VideoList> datas = [
  VideoList(
      username: "Zee5 India",
      vdopic: AssetImage("assets/vdo_pic/001.jpg"),
      userpic: "assets/user_pic/zee5_logo.jpeg",
      title:
          "Valimai(Tamil) | Zee5 |Cut Official Trailer |Ajith Kumar | Yuvan Shankar Raja ",
      subtitle: "Zee5 India . 20M views . 4 years ago",
      duration: "1:05"),
  VideoList(
      username: "Tesla",
      vdopic: AssetImage("assets/vdo_pic/002.jpg"),
      userpic: "assets/user_pic/Tesla1_logo.png",
      title: "It Will Give You GooseBumps-Elon Musk Motivational Video",
      subtitle: "Tesla . 145M views . 2 years ago",
      duration: "6:32"),
  VideoList(
      username: "Think Music",
      vdopic: AssetImage("assets/vdo_pic/003.jpg"),
      userpic: "assets/user_pic/thinkmusic_logo.png",
      title:
          "Iravukku Aayiram Kangal | Uyir Uruvatha\nVideo Song |Arulnithi,Mahima ",
      subtitle: "Think Music . 20M views .4 years ago",
      duration: "3:02"),
  VideoList(
      username: "Sun Pictures",
      vdopic: AssetImage("assets/vdo_pic/004.jpg"),
      userpic: "assets/user_pic/sony_logo.png",
      title:
          "Arabic Kutthu|Halamithi Habibo-Lyrics Video|Beast|Thalapathy |Sun Pictures",
      subtitle: "Sun Pictures . 223M views . 1 month ago",
      duration: "4:43"),
  VideoList(
      username: "Ratan Tata",
      vdopic: AssetImage("assets/vdo_pic/005.jpg"),
      userpic: "assets/user_pic/tata_logo.jpg",
      title: "Ratan Tata: Moving The Tata Group Beyond India|Rata Tata",
      subtitle: "Ratan Tata . 764K views . 9 Years ago",
      duration: "33:43"),
  VideoList(
      username: "Sony Music",
      vdopic: AssetImage("assets/vdo_pic/006.jpg"),
      userpic: "assets/user_pic/music_logo.jpeg",
      title:
          "Adiye Video Song | Bachelor | G.V.Prakash Kumar|Dhibu Ninan Thomas |Sathish",
      subtitle: "Sony Music . 48M views . 5 months ago",
      duration: "4:37"),
];
