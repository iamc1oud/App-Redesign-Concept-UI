import 'dart:ui';

import 'package:flutter/material.dart';

class AvatarStoryWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 160,
        width: 50,
        child: ListView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            children: List.generate(
              5,
              (index) {
                if (index == 0) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              height: 160,
                              width: 100,
                              color: Colors.grey.withOpacity(0.4),
                            ),
                            Container(
                              child: BackdropFilter(
                                filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                                child: Container(
                                  decoration: BoxDecoration(color: Colors.white.withOpacity(0.0)),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: CircleAvatar(
                                backgroundColor: Colors.pinkAccent,
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }
                return Container(
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    "https://thediplomat.com/wp-content/uploads/2019/12/thediplomat-2019-12-17-4.jpg"),
                              )),
                          height: 160,
                          width: 100,
                        ),
                      ),
                      Container(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                          child: Container(
                            decoration: BoxDecoration(color: Colors.white.withOpacity(0.0)),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://cdn.psychologytoday.com/sites/default/files/styles/image-article_inline_full/public/field_blog_entry_images/2018-09/shutterstock_648907024.jpg?itok=ji6Xj8tv"),
                        ),
                      ),
                    ],
                  ),
                );
              },
            )));
  }
}
