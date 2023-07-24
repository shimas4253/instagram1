import 'package:flutter/material.dart';

class reels extends StatelessWidget {
  reels({Key? key}) : super(key: key);

  var images = [
    'assets/images/reel.jpeg',
    'assets/images/reel.jpeg',
    'assets/images/reel.jpeg',
    'assets/images/reel.jpeg',
    'assets/images/reel.jpeg',
    'assets/images/reel.jpeg',
    'assets/images/reel.jpeg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: [
      Container(
        height: 760,
        child: PageView.builder(
            scrollDirection: Axis.vertical,
            itemCount: images.length,
            itemBuilder: (BuildContext cntx, int index) {
              return Stack(
                children: [
                  Container(
                    height: 760,
                    width: 420,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage(images[index]),
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
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
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
                                Icons.favorite_border_outlined,
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
                                color: Colors.yellow),
                          )
                        ],
                      )),
                ],
              );
            }),
      )
    ])));
  }
}
