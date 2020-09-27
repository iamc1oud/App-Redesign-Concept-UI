import 'package:Instagram/screen/components/AvatarStoryWidget.dart';
import 'package:ant_icons/ant_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      elevation: 5,
      floating: true,
      expandedHeight: 220,
      flexibleSpace: Padding(
        padding: const EdgeInsets.only(top: 80.0),
        child: AvatarStoryWidget(),
      ),
      pinned: true,
      centerTitle: false,
      title: Text("Feed", style: GoogleFonts.aBeeZee(fontSize: 26, fontWeight: FontWeight.bold)),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              width: 50,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.redAccent, Colors.pinkAccent],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight),
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                  child: Text(
                "LIVE",
                style: TextStyle(color: Colors.white),
              ))),
        ),
        // Padding(
        //     padding: const EdgeInsets.all(8.0),
        //     child: Container(
        //         width: 60,
        //         decoration: BoxDecoration(
        //             gradient: LinearGradient(colors: [
        //               Colors.lightBlue,
        //               Colors.blueAccent,
        //             ], begin: Alignment.topLeft, end: Alignment.bottomRight),
        //             borderRadius: BorderRadius.circular(10)),
        //         child: Center(
        //             child: Row(
        //           children: [
        //             Expanded(
        //               child: Padding(
        //                 padding: const EdgeInsets.all(6.0),
        //                 child: CircleAvatar(
        //                   backgroundColor: Colors.white,
        //                   child: Text("3"),
        //                 ),
        //               ),
        //             ),
        //             Icon(AntIcons.message_outline),
        //           ],
        //         )))),
      ],
    );
  }
}
