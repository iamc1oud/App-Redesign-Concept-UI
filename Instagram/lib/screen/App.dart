import 'package:Instagram/screen/components/AppBarWidget.dart';
import 'package:Instagram/screen/components/UserPostCardWidget.dart';
import 'package:ant_icons/ant_icons.dart';
import 'package:flutter/material.dart';

import 'components/UserPostCardWidget.dart';
import 'components/UserPostCardWidget.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  int index = 0;

  List<UserPostCardWidget> response = [
    UserPostCardWidget(
      description: "Learning flutter",
      images: [
        "https://i.pinimg.com/originals/12/1e/59/121e59e3f723000c0fb8619d3501a27f.jpg"
      ],
      blurHashString: ["L48gEqI800t:9WX,E#+I4.r]xYo}"],
      isSaved: false,
      likes: 19586,
      name: "iamcloud.dev",
      place: "Vienna",
      profileUrl:
      "https://i.pinimg.com/originals/12/1e/59/121e59e3f723000c0fb8619d3501a27f.jpg"
    ),
    UserPostCardWidget(
      description: "Learning flutter",
      images: [
        "https://i.pinimg.com/originals/1a/31/29/1a3129ad5a3994490a3e6b871071f051.jpg"
      ],
      blurHashString: ["LaC7sm-=k?R+?wxuR-RiV?WXRPWB"],
      isSaved: false,
      likes: 7324,
      name: "iamcloud.dev",
      place: "Vienna",
      profileUrl:
      "https://i.pinimg.com/originals/1a/31/29/1a3129ad5a3994490a3e6b871071f051.jpg"
    ),
    UserPostCardWidget(
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      images: [
        "https://www.mikemcgeephotography.com/wp-content/uploads/2018/09/nancy-san_francisco-hypercolor-extreme-colored-gel-artistic-portrait-05.jpg",
        "https://www.mikemcgeephotography.com/wp-content/uploads/2018/09/nancy-san_francisco-hypercolor-extreme-colored-gel-artistic-portrait-01-705x471.jpg"
      ],
      blurHashString: ["LeKRju,.}RAI={W-sksqs8oLJBxD","LNHveLIr-4}n=woJJ7s.5l\$\$j^I="],
      isSaved: false,
      likes: 22340,
      name: "iamcloud.dev",
      place: "Vienna",
      profileUrl:
      "https://www.mikemcgeephotography.com/wp-content/uploads/2018/09/nancy-san_francisco-hypercolor-extreme-colored-gel-artistic-portrait-01-705x471.jpg",
    ),
    UserPostCardWidget(
        description: "Learning flutter",
        images: [
          "https://i.pinimg.com/originals/12/1e/59/121e59e3f723000c0fb8619d3501a27f.jpg"
        ],
        blurHashString: ["L48gEqI800t:9WX,E#+I4.r]xYo}"],
        isSaved: false,
        likes: 19586,
        name: "iamcloud.dev",
        place: "Vienna",
        profileUrl:
        "https://i.pinimg.com/originals/12/1e/59/121e59e3f723000c0fb8619d3501a27f.jpg"
    ),
    UserPostCardWidget(
        description: "Learning flutter",
        images: [
          "https://i.pinimg.com/originals/1a/31/29/1a3129ad5a3994490a3e6b871071f051.jpg"
        ],
        blurHashString: ["LaC7sm-=k?R+?wxuR-RiV?WXRPWB"],
        isSaved: false,
        likes: 7324,
        name: "iamcloud.dev",
        place: "Vienna",
        profileUrl:
        "https://i.pinimg.com/originals/1a/31/29/1a3129ad5a3994490a3e6b871071f051.jpg"
    ),
    UserPostCardWidget(
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      images: [
        "https://www.mikemcgeephotography.com/wp-content/uploads/2018/09/nancy-san_francisco-hypercolor-extreme-colored-gel-artistic-portrait-05.jpg",
        "https://www.mikemcgeephotography.com/wp-content/uploads/2018/09/nancy-san_francisco-hypercolor-extreme-colored-gel-artistic-portrait-01-705x471.jpg"
      ],
      blurHashString: ["LeKRju,.}RAI={W-sksqs8oLJBxD","LNHveLIr-4}n=woJJ7s.5l\$\$j^I="],
      isSaved: false,
      likes: 22340,
      name: "iamcloud.dev",
      place: "Vienna",
      profileUrl:
      "https://www.mikemcgeephotography.com/wp-content/uploads/2018/09/nancy-san_francisco-hypercolor-extreme-colored-gel-artistic-portrait-01-705x471.jpg",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    response.addAll([
    ]);
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          AppBarWidget(),
          SliverToBoxAdapter(
            child: Divider(),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return response[index];
            }, childCount: response.length),
          ),
        ],
      ),
      bottomNavigationBar: ClipRect(
        clipBehavior: Clip.antiAlias,
        child: BottomNavigationBar(
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
            BottomNavigationBarItem(
                icon: Icon(AntIcons.home_outline), title: Text("Home")),
            BottomNavigationBarItem(
                icon: Icon(AntIcons.video_camera_outline), title: Text("Reels")),
            BottomNavigationBarItem(
                icon: Icon(AntIcons.plus_circle_outline), title: Text("Add")),
            BottomNavigationBarItem(
                icon: Icon(AntIcons.heart_outline), title: Text("Notification")),
            BottomNavigationBarItem(
                icon: Icon(AntIcons.user), title: Text("Profile")),
          ],
        ),
      ),
    );
  }
}
