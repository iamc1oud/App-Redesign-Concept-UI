import 'package:flutter/material.dart';

class UserPostCardWidget extends StatefulWidget {
  final String profileUrl;
  final String name;
  final String place;
  final List<String> images;
  final int likes;
  final String description;
  final bool isSaved;

  const UserPostCardWidget(
      {Key key,
      this.profileUrl,
      this.name,
      this.place,
      this.images,
      this.likes,
      this.description,
      this.isSaved = false})
      : super(key: key);

  @override
  _UserPostCardWidgetState createState() => _UserPostCardWidgetState();
}

class _UserPostCardWidgetState extends State<UserPostCardWidget> {
  PageController _pageController = PageController(initialPage: 0, keepPage: true);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(10),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        children: [Text(this.widget.name), Text(this.widget.place)],
                      ),
                    ],
                  ),
                  Icon(Icons.more_vert)
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 200,
                child: PageView(
                  controller: _pageController,
                  scrollDirection: Axis.horizontal,
                  children: widget.images
                      .map((e) => Image(
                            fit: BoxFit.cover,
                            image: NetworkImage(e),
                          ))
                      .toList(),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 2.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.chat_bubble_outline),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.arrow_forward_ios)
                      ],
                    ),
                    Icon(Icons.turned_in_not)
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 2.0),
                child: Text(
                  widget.likes.toString() + " likes",
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 2.0),
                  child: RichText(
                    text: TextSpan(children: [
                      TextSpan(text: widget.name, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
                      TextSpan(text: " " + widget.description, style: TextStyle(color: Colors.black))
                    ]),
                  )),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 2.0),
                child: Text(
                  "See all 200 comments",
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
