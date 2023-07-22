import 'package:flutter/material.dart';

class reels extends StatelessWidget {
  const reels({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: [
      Stack(
        children: [
          Container(
            height: 760,
            width: 420,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/images/reel.jpeg'),
              fit: BoxFit.fill,
            )),
          ),
          Positioned(
              left: 10,
              bottom: 10,
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.red,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        '_shimas___',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent),
                      onPressed: () {},
                      child: Text('Follow'))
                ],
              )),
          Positioned(
              right: 10,
              bottom: 10,
              child: Column(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.heart_broken_outlined,
                        color: Colors.white,
                        size: 40,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.share,
                        color: Colors.white,
                        size: 40,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.comment,
                        color: Colors.white,
                        size: 40,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.more_vert,
                        color: Colors.white,
                        size: 40,
                      )),
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.yellow
                    ),
                  )
                ],
              )),
        ],
      ),
    ])));
  }
}
