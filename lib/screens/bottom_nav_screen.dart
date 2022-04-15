import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  final PageController pagenav;
  const CustomBottomNavigationBar({Key? key, required this.pagenav})
      : super(key: key);

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState(navpage: pagenav);
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  final PageController navpage;
  _CustomBottomNavigationBarState({required this.navpage});
  int _currentintex = 0;
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          textTheme: Theme.of(context)
              .textTheme
              .copyWith(caption: TextStyle(color: Colors.black))),
      child: BottomNavigationBar(
          onTap: (val) {
            setState(() {
              _currentintex = val;
            });
            navpage.jumpToPage(_currentintex);
          },
          elevation: 20,
          currentIndex: _currentintex,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                activeIcon: Icon(Icons.home),
                icon: Icon(Icons.home_outlined),
                label: "Home"),
            BottomNavigationBarItem(
                activeIcon: Icon(Icons.explore),
                icon: Icon(Icons.explore_outlined),
                label: "Shorts"),
            BottomNavigationBarItem(
                activeIcon: Icon(
                  Icons.add_circle,
                  size: 30,
                ),
                icon: IconButton(
                  icon: Icon(
                    Icons.add_circle_outline,
                    size: 30,
                  ),
                  onPressed: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10)),
                            ),
                            height: 300,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 17.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Create",
                                        style: TextStyle(
                                            fontSize: 22, color: Colors.white),
                                        textAlign: TextAlign.start,
                                      ),
                                      IconButton(
                                          onPressed: () =>
                                              Navigator.pop(context),
                                          icon: Icon(
                                            Icons.close,
                                            size: 30,
                                          ))
                                    ],
                                  ),
                                ),
                                CustomTile(
                                  Icon(
                                    Icons.add,
                                    size: 34,
                                  ),
                                  Text(
                                    "Create a Shorts",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w300),
                                  ),
                                ),
                                CustomTile(
                                  Icon(
                                    Icons.upload_sharp,
                                    size: 30,
                                  ),
                                  Text(
                                    "Upload a Video",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w300),
                                  ),
                                ),
                                CustomTile(
                                  Icon(
                                    Icons.podcasts,
                                    size: 30,
                                  ),
                                  Text(
                                    "Go Live",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w300),
                                  ),
                                )
                              ],
                            ),
                          );
                        });
                  },
                ),
                label: ""),
            BottomNavigationBarItem(
                activeIcon: Icon(Icons.subscriptions),
                icon: Icon(Icons.subscriptions_outlined),
                label: "Subscription"),
            BottomNavigationBarItem(
                activeIcon: Icon(Icons.video_library),
                icon: Icon(Icons.video_library_outlined),
                label: "Library"),
          ]),
    );
  }
}

Widget CustomTile(Icon icon, var _title) {
  return Container(
    padding: EdgeInsets.only(top: 5),
    child: ListTile(
      onTap: () {},
      leading: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
        child: icon,
      ),
      title: _title,
    ),
  );
}
