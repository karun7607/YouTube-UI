import 'package:flutter/material.dart';

class ChipWidget extends StatelessWidget {
  const ChipWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0, top: 10),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Chip(
                  label: Text(
                    "#All",
                    style: TextStyle(color: Colors.black),
                  ),
                  backgroundColor: Colors.white),
              SizedBox(width: 5),
              Chip(label: Text("Flutter")),
              SizedBox(width: 5),
              Chip(label: Text("Dar")),
              SizedBox(width: 5),
              Chip(label: Text("Tamil New Songs")),
              SizedBox(width: 5),
              Chip(label: Text("Dhoni")),
              SizedBox(width: 5),
              Chip(label: Text("Elon Musk")),
              SizedBox(width: 5),
              Chip(label: Text("Thala")),
              SizedBox(width: 5),
              Chip(label: Text("Rata Tata")),
              SizedBox(width: 5),
              Chip(label: Text("Dart")),
              SizedBox(width: 5),
              Chip(label: Text("Thala")),
              SizedBox(width: 5),
              Chip(label: Text("Greens Tech")),
            ],
          ),
        ),
      ),
    );
  }
}
