import 'package:Instagram/screen/components/AppBarWidget.dart';
import 'package:Instagram/screen/components/UserPostCardWidget.dart';
import 'package:ant_icons/ant_icons.dart';
import 'package:flutter/material.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  int index = 0;

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
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.redAccent,
        type: BottomNavigationBarType.fixed,
        currentIndex: index,
        onTap: (currentIndex) {
          setState(() {
            index = currentIndex;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(AntIcons.home_outline), title: Text("Home")),
          BottomNavigationBarItem(icon: Icon(AntIcons.video_camera_outline), title: Text("Reels")),
          BottomNavigationBarItem(icon: Icon(AntIcons.plus_circle_outline), title: Text("Add")),
          BottomNavigationBarItem(icon: Icon(AntIcons.heart_outline), title: Text("Notification")),
          BottomNavigationBarItem(icon: Icon(AntIcons.user), title: Text("Profile")),
        ],
      ),
    );
  }
}
