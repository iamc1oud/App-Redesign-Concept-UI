import 'dart:ui';

import 'package:Instagram/screen/components/PostView.dart';
import 'package:ant_icons/ant_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';

class UserPostCardWidget extends StatefulWidget {
  final String profileUrl;
  final String name;
  final String place;
  final List<String> images;
  final int likes;
  final String description;
  final bool isSaved;
  final List<String> blurHashString;

  const UserPostCardWidget(
      {Key key,
      this.profileUrl,
      this.name,
      this.place,
      this.images,
      this.likes,
      this.description,
      this.isSaved = false, this.blurHashString})
      : super(key: key);

  @override
  _UserPostCardWidgetState createState() => _UserPostCardWidgetState();
}

class _UserPostCardWidgetState extends State<UserPostCardWidget> {
  PageController _pageController = PageController(initialPage: 0, keepPage: true);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      heightFactor: 0.9,
      child: Material(
        clipBehavior: Clip.antiAlias,
        elevation: 10,
        animationDuration: Duration(seconds: 5),
        borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        child: InkWell(
          onDoubleTap: (){
            print("Like the picture");
          },
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => PostView(this.widget)));
          },
          child: Stack(
            children: [
              Container(
                height: 450,
                child: PageView(
                  controller: _pageController,
                  scrollDirection: Axis.horizontal,
                  children: widget.images.asMap().entries
                      .map((e) => BlurHash(
                    imageFit: BoxFit.cover,
                    hash: widget.blurHashString[e.key],
                    image: e.value,
                  ))
                      .toList(),
                ),
              ),
              Positioned(
                top: 20,
                left: 20,
                child: Row(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(this.widget.profileUrl),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [Text(this.widget.name, style: TextStyle(color: Colors.white),), Text(this.widget.place,style: TextStyle(color: Colors.white))],
                        ),
                      ],
                    ),
                    Icon(Icons.more_vert)
                  ],
                ),
              ),
              Positioned(
                left: 10,
                bottom: 60,
                child: Padding(
                  padding: const EdgeInsets.only(left: 2.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            padding: EdgeInsets.all(8.0),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 0.5 , sigmaY: 0.5),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                  ),
                                  SizedBox(width: 5,),
                                  Text(this.widget.likes.toString())
                                ],
                              ),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.8),
                              borderRadius: BorderRadius.all(Radius.circular(20))
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(AntIcons.message, color: Colors.white,),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                right: 10,
                  bottom: 60,
                  child: Icon(Icons.turned_in_not, color: Colors.white,))
            ],
          ),
        ),
      ),
    );
  }
}
