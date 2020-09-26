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
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              height: 160,
                              width: 100,
                              color: Colors.grey.withOpacity(0.4),
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
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            height: 160,
                            width: 100,
                            child: Image(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "https://thediplomat.com/wp-content/uploads/2019/12/thediplomat-2019-12-17-4.jpg"),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://cdn.psychologytoday.com/sites/default/files/styles/image-article_inline_full/public/field_blog_entry_images/2018-09/shutterstock_648907024.jpg?itok=ji6Xj8tv"),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            )));
  }
}
