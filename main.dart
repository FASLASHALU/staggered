import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main(List<String> args) {
  runApp(myapp());
}

class myapp extends StatefulWidget {
  const myapp({super.key});

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("picture"),
        ),
        body: Container(
          child: masonryLayout(context),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }

  Widget masonryLayout(BuildContext context) {
    return MasonryGridView.builder(
        scrollDirection: Axis.vertical,
        gridDelegate:
            SliverSimpleGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: 5,
        itemBuilder: (context, index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child:
                Image.network("https://jooinn.com/images/beautiful-park-4.jpg"),
          );
        });
  }
}
