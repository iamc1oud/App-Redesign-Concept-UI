import 'package:flutter/material.dart';

class UserPostCardWidget extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return Container();
  }
}
