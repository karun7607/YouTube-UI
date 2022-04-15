import 'package:flutter/material.dart';
import 'package:youtube/screens/custom_appbar_screen.dart';

class SubscriptionPage extends StatefulWidget {
  const SubscriptionPage({Key? key}) : super(key: key);

  @override
  State<SubscriptionPage> createState() => _SubscriptionPageState();
}

class _SubscriptionPageState extends State<SubscriptionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
            controller: ScrollController(initialScrollOffset: 0),
            slivers: [
          CustomAppBar(),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 270.0),
              child: Center(child: CircularProgressIndicator()),
            ),
          )
        ]));
  }
}
