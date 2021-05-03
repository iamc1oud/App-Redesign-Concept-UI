import 'package:flutter/material.dart';

class ShrinkTopListPage extends StatefulWidget {
  @override
  _ShrinkTopListPageState createState() => _ShrinkTopListPageState();
}

const itemSize = 150.0;

class _ShrinkTopListPageState extends State<ShrinkTopListPage> {
  final scrollController = ScrollController();

  @override
  void initState() {
    scrollController.addListener(onListen);
    super.initState();
  }

  @override
  void dispose() {
    scrollController.removeListener(onListen);
    scrollController.dispose();
    super.dispose();
  }

  onListen() {
    print("${scrollController.offset}");
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shrink Top List"),
      ),
      body: CustomScrollView(
        controller: scrollController,
        slivers: [
          SliverList(delegate: SliverChildBuilderDelegate((context, index) {
            final itemPositionOffset = index * itemSize * 0.5;
            final difference = scrollController.offset - itemPositionOffset;
            final percent = 0.5 - (difference / (itemSize * 0.5));
            double opacity = percent;
            double scale = percent;
            if (opacity > 1.0) opacity = 1.0;
            if (opacity < 0.0) opacity = 0.0;
            if (percent > 1.0) scale = 1.0;

            return Align(
              heightFactor: 0.8,
              child: Opacity(
                opacity: opacity,
                child: Transform(
                  alignment: Alignment.topLeft,
                  transform: Matrix4.identity()..scale(scale, 1.0),
                  child: SizedBox(
                    height: 150,
                    child: Card(
                      elevation: 100,
                      shadowColor: Colors.blueGrey,
                      child: Center(child: Text("$index")),
                    ),
                  ),
                ),
              ),
            );
          }))
        ],
      ),
    );
  }
}
