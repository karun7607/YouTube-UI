import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:youtube/datas/data.dart';

import '../screens/custom_appbar_screen.dart';

class LibraryPage extends StatefulWidget {
  const LibraryPage({Key? key}) : super(key: key);

  @override
  State<LibraryPage> createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
          controller: ScrollController(initialScrollOffset: 0),
          slivers: [
            CustomAppBar(),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Recent",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontSize: 18),
                ),
              ),
            ),
            SliverToBoxAdapter(
                child: Container(
              height: 150,
              // color: Colors.white,
              child: RefreshIndicator(
                onRefresh: _refresh,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      final data = datas[index];

                      return Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 95,
                              width: 160,
                              child: Image(
                                image: data.vdopic,
                                fit: BoxFit.fill,
                              ),
                            ),
                            SizedBox(height: 2),
                            ClipRect(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    // color: Colors.green,
                                    width: 140,
                                    height: 50,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          data.title,
                                          // style: TextStyle(color: Colors.black),
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          // softWrap: false,
                                        ),
                                        Text(
                                          data.username,
                                          style: TextStyle(color: Colors.grey),
                                          overflow: TextOverflow.ellipsis,
                                        )
                                      ],
                                    ),
                                  ),
                                  Icon(
                                    Icons.more_vert_outlined,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    }),
              ),
            )),
            SliverToBoxAdapter(
              child: Divider(
                thickness: 2.0,
              ),
            ),
            SliverToBoxAdapter(
              child: customListTile(
                  Icon(Icons.history), Text("History"), null, null),
            ),
            SliverToBoxAdapter(
              child: customListTile(Icon(Icons.smart_display_outlined),
                  Text("Your videos"), null, null),
            ),
            SliverToBoxAdapter(
              child: customListTile(
                  Icon(Icons.download_sharp),
                  Text("Downloads"),
                  Icon(Icons.check_circle),
                  Text("247 videos")),
            ),
            SliverToBoxAdapter(
              child: customListTile(Icon(Icons.local_movies_outlined),
                  Text("Your Movies"), null, null),
            ),
            SliverToBoxAdapter(
              child: customListTile(Icon(Icons.watch_later_outlined),
                  Text("Watch Later"), null, Text("2 unwatched videos")),
            ),
            SliverToBoxAdapter(
              child: Divider(
                thickness: 2.0,
              ),
            ),
            SliverToBoxAdapter(
              child: customListTile(
                  Icon(
                    Icons.add,
                    color: Colors.blue,
                  ),
                  Text(
                    "New Playlist",
                    style: TextStyle(color: Colors.blue),
                  ),
                  null,
                  null),
            ),
            SliverToBoxAdapter(
              child: customListTile(Icon(Icons.thumb_up_alt_outlined),
                  Text("Liked Videos"), null, Text("321 videos")),
            ),
          ]),
    );
  }

  Future<void> _refresh() {
    return Future.delayed(Duration(seconds: 3));
  }
}

Widget customListTile(icon1, _title, icon2, _text) {
  return ListTile(
    leading: icon1,
    title: _title,
    trailing: icon2,
    subtitle: _text,
  );
}
