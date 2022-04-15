import 'package:flutter/material.dart';

class DataSearch extends SearchDelegate {
  final searchList = [
    "ratan tata",
    "arabic kutthu",
    "adiye bachlor",
    "valimai trailer",
    "dart",
    "elon musk",
    "gridview flutter",
    "tabbar flutter",
    "inkwell widget in flutter",
    "kgf chapter 2 official trailer",
    "toofan song",
    "learn all in tamil",
    "uyir uruvatha"
  ];

  final suggestList = [
    "valimai trailer",
    "dart",
    "inkwell widget in flutter",
    "kgf chapter 2 official trailer",
    "elon musk",
    "gridview flutter",
    "tabbar flutter",
  ];
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = "";
          },
          icon: Icon(
            Icons.clear,
            color: Colors.grey,
          )),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: AnimatedIcon(
            icon: AnimatedIcons.menu_arrow, progress: transitionAnimation));
  }

  @override
  Widget buildResults(BuildContext context) {
    return Card();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionlist = query.isEmpty
        ? suggestList
        : searchList.where((e) => e.startsWith(query)).toList();

    return ListView.builder(
        itemCount: suggestionlist.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.history),
            title: RichText(
              text: TextSpan(
                  text: suggestionlist[index].substring(0, query.length),
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                        text: suggestionlist[index].substring(query.length),
                        style: TextStyle(color: Colors.grey))
                  ]),
            ),
          );
        });
  }
}
