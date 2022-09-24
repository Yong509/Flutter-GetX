import 'package:flutter/material.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Feed Page',
        style: Theme.of(context).textTheme.headline1,
      ),
    );
  }
}
