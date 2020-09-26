import 'package:Instagram/screen/components/AppBarWidget.dart';
import 'package:Instagram/screen/components/UserPostCardWidget.dart';
import 'package:flutter/material.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          AppBarWidget(),
          SliverToBoxAdapter(
            child: Divider(),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return UserPostCardWidget(
                description: "Learning flutter",
                images: [
                  "https://www.telegraph.co.uk/content/dam/Travel/Destinations/Europe/Austria/Vienna/st-stephen-s-cathedral-vienna-p.jpg"
                ],
                isSaved: false,
                likes: 240,
                name: "iamcloud.dev",
                place: "Vienna",
                profileUrl:
                    "https://cdn.now.howstuffworks.com/media-content/0b7f4e9b-f59c-4024-9f06-b3dc12850ab7-1920-1080.jpg",
              );
            }),
          ),
        ],
      ),
    );
  }
}
