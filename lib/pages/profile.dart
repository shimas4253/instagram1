import 'package:flutter/material.dart';

class profile extends StatelessWidget {
  profile({Key? key}) : super(key: key);

  var profiles = [
    'assets/images/profile.jpeg',
    'assets/images/profile.jpeg',
    'assets/images/post.jpeg',
    'assets/images/post.jpeg',
    'assets/images/me.jpeg',
    'assets/images/me.jpeg',
    'assets/images/me.jpeg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.white,
              title: TextButton.icon(
                onPressed: () {},
                label: Text(
                  '_shimas___',
                  style: TextStyle(color: Colors.black),
                ),
                icon: Icon(Icons.expand_more, color: Colors.black),
              ),
              actions: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.add_box_outlined,
                          color: Colors.black,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.menu,
                          color: Colors.black,
                        )),
                  ],
                ),
              ],
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(925),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 50,
                            backgroundImage:
                                AssetImage('assets/images/me.jpeg'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15, left: 50),
                            child: Container(
                              child: Row(
                                children: [
                                  Container(
                                    height: 40,
                                    width: 40,
                                    child: Text(
                                      ' 147\nposts',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Container(
                                      height: 40,
                                      width: 100,
                                      child: Text(
                                        '    1286\n Followers',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 5),
                                    child: Container(
                                      height: 40,
                                      width: 80,
                                      child: Text(
                                        '     634 \n Following',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            'muhammed shimas',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text('personal vlog\nshimas\nfind strength in pain'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8),
                        child: Container(
                          height: 50,
                          width: 400,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10)),
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.grey[200]),
                              onPressed: () {},
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Professional dashboard                                                        ',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                  Text(
                                    '378 account reached in the last 30 days',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ],
                              )),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 195,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.grey[200]),
                                onPressed: () {},
                                child: Text(
                                  'Edit Profile',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                          Container(
                            width: 195,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.grey[200]),
                                onPressed: () {},
                                child: Text(
                                  'Share Profile',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                )),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Container(
                        height: 100,
                        child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (cntx, index) {
                              return CircleAvatar(
                                radius: 40,
                                backgroundColor: Colors.yellow,
                              );
                            },
                            separatorBuilder:
                                (BuildContext context, int index) {
                              return SizedBox(
                                width: 25,
                              );
                            },
                            itemCount: 10),
                      ),
                    ),
                    DefaultTabController(
                        length: 3,
                        child: TabBar(
                          indicatorWeight: .5,
                          indicatorColor: Colors.black,
                          tabs: [
                            Icon(
                              Icons.grid_on_sharp,
                              color: Colors.black,
                              size: 30,
                            ),
                            Icon(
                              Icons.video_collection_outlined,
                              color: Colors.black,
                              size: 30,
                            ),
                            Icon(
                              Icons.switch_account_outlined,
                              color: Colors.black,
                              size: 30,
                            )
                          ],
                        )),
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Container(
                        height: 500,
                        child: GridView.builder(
                          shrinkWrap: true,
                          physics: ScrollPhysics(),
                          itemCount: profiles.length,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                          ),
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white),
                                  image: DecorationImage(
                                      image: AssetImage(profiles[index]),
                                      fit: BoxFit.fill)),
                            );
                          },
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
