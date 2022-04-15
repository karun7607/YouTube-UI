import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube/screens/bottom_nav_screen.dart';
import 'package:youtube/screens/custom_appbar_screen.dart';
import 'package:youtube/widgets/Library_page.dart';
import 'package:youtube/widgets/home_chip_widget.dart';
import 'package:youtube/widgets/shorts_page.dart';
import '../widgets/subscription_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List vdopic = [
    "assets/vdo_pic/001.jpg",
    "assets/vdo_pic/002.jpg",
    "assets/vdo_pic/003.jpg",
    "assets/vdo_pic/004.jpg",
    "assets/vdo_pic/005.jpg",
    "assets/vdo_pic/006.jpg",
    // "assets/vdo_pic/007.jpg",
    // "assets/vdo_pic/008.jpg",
  ];

  List userpic = [
    "assets/user_pic/zee5_logo.jpeg",
    "assets/user_pic/Tesla1_logo.png",
    "assets/user_pic/thinkmusic_logo.png",
    "assets/user_pic/sony_logo.png",
    "assets/user_pic/tata_logo.jpg",
    "assets/user_pic/music_logo.jpeg",
    // "assets/user_pic/tata_logo.jpg",
    // "assets/user_pic/sony_logo.png",
  ];
  List _title = [
    "Valimai(Tamil) | Zee5 Cut Official Trailer |\nAjith Kumar | Yuvan Shankar Raja ",
    "It Will Give You GooseBumps-Elon Musk\nMotivational Video",
    "Iravukku Aayiram Kangal | Uyir Uruvatha\nVideo Song |Arulnithi,Mahima ",
    "Arabic Kutthu|Halamithi Habibo-Lyrics Video\n|Beast|Thalapathy |Sun Pictures",
    "Ratan Tata: Moving The Tata Group Beyond\nIndia|Rata Tata",
    "Adiye Video Song | Bachelor | G.V.Prakash\nKumar|Dhibu Ninan Thomas |Sathish",
  ];
  List _subtitle = [
    "Zee5 India . 20M views . 4 years ago",
    "Tesla . 145M views . 2 years ago",
    "Think Music . 20M views .4 years ago",
    "Sun Pictures . 223M views . 1 month ago",
    "Ratan Tata . 764K views . 9 Years ago",
    "Sony Music . 48M views . 5 months ago"
  ];

  List duration = ["1:05", "6:32", "3:02", "4:43", "33:43", "4:37"];

  PageController page = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(controller: page, children: [
        CustomScrollView(
          controller: ScrollController(initialScrollOffset: 0),
          slivers: [
            CustomAppBar(),
            SliverToBoxAdapter(child: ChipWidget()),
            SliverList(
                delegate: SliverChildBuilderDelegate((context, index) {
              return Column(
                children: [
                  Stack(
                    children: [
                      Card(
                        child: Container(
                          child: Image(image: AssetImage(vdopic[index])),
                        ),
                      ),
                      Positioned(
                          bottom: 8.0,
                          right: 8.0,
                          child: Container(
                            color: Colors.black,
                            child: Text(
                              duration[index],
                              style: TextStyle(color: Colors.white),
                            ),
                            padding: EdgeInsets.all(4.0),
                          ))
                    ],
                  ),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          width: 50,
                          child: CircleAvatar(
                            backgroundImage: AssetImage(
                              userpic[index],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(child: Text(_title[index])),
                            SizedBox(
                              height: 2,
                            ),
                            Container(
                              child: Text(
                                _subtitle[index],
                                style: TextStyle(color: Colors.grey),
                                textAlign: TextAlign.start,
                              ),
                            )
                          ],
                        ),
                        Spacer(),
                        IconButton(
                            onPressed: () {}, icon: Icon(Icons.more_vert)),
                      ],
                    ),
                  ),
                  Divider()
                ],
              );
            }, childCount: 6)),
          ],
        ),
        Container(
          child: ShortsPage(),
        ),
        Container(),
        Container(
          child: SubscriptionPage(),
        ),
        LibraryPage()
      ]),
      bottomNavigationBar: CustomBottomNavigationBar(pagenav: page),
    );
  }
}
