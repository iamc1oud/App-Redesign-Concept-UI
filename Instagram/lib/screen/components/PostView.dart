import 'package:ant_icons/ant_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';

import 'UserPostCardWidget.dart';

class PostView extends StatelessWidget {
  final UserPostCardWidget userData;

  PostView(this.userData);

  @override
  Widget build(BuildContext context) {
    PageController _pageController =
        PageController(initialPage: 0, keepPage: true);
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            CupertinoIcons.back,
            color: Colors.black,
          ),
        ),
      ),
      body: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.6,
              child: BlurHash(hash: this.userData.blurHashString[0]),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.6,
              child: PageView(
                controller: _pageController,
                scrollDirection: Axis.horizontal,
                children: userData.images
                    .asMap()
                    .entries
                    .map((e) => Stack(
                          children: [
                            BlurHash(hash: this.userData.blurHashString[e.key]),
                            Align(
                              alignment: Alignment.center,
                              child: Image(
                                fit: BoxFit.contain,
                                image: NetworkImage(e.value),
                              ),
                            ),
                          ],
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
                        backgroundImage: NetworkImage(this.userData.profileUrl),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            this.userData.name,
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(this.userData.place,
                              style: TextStyle(color: Colors.white))
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              left: 20,
              bottom: 20,
              child: Row(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            this.userData.description,
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 8.0),
        child: Material(
          clipBehavior: Clip.antiAlias,
          borderRadius: BorderRadius.all(Radius.circular(30)),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.061,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.3),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(this.userData.profileUrl),
                      ),
                    ),
                    Text("Add a comment..."),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: Icon(CupertinoIcons.forward),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
