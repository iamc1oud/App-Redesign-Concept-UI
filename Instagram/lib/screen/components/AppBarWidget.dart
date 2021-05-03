import 'package:Instagram/screen/components/AvatarStoryWidget.dart';
import 'package:ant_icons/ant_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      elevation: 5,
      floating: false,
      expandedHeight: 140,
      flexibleSpace: Padding(
        padding: const EdgeInsets.only(top: 80.0),
        child: AvatarStoryWidget(),
      ),
      leading: Icon(AntIcons.setting_outline, color: Colors.black,),
      pinned: false,
      centerTitle: true,
      title: Text("Feed", style: GoogleFonts.pacifico(fontSize: 26)),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              width: 50,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    colors:[Colors.redAccent, Colors.pinkAccent],),
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                  child: Text(
                "LIVE",
                style: TextStyle(color: Colors.white),
              ))),
        ),
      ],
    );
  }
}
