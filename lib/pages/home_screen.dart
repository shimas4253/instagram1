import 'package:flutter/material.dart';

class homeScreen extends StatelessWidget {
  homeScreen({Key? key}) : super(key: key);
  var profiles = [
    'assets/images/profile.jpeg',
    'assets/images/profile.jpeg',
    'assets/images/profile.jpeg',
    'assets/images/profile.jpeg',
    'assets/images/profile.jpeg',
    'assets/images/profile.jpeg',
    'assets/images/profile.jpeg'
  ];
  var names = [
    'your profile',
    '_siyad___',
    'safvan__kt',
    'habibi___',
    'shashi___',
    'zayn_zayn',
    'hablu'

  ];
  var captions = [
    'Amazing',
    ' Attitude',
    'Awesome',
        'Awkward',
        'Balance',
        'Blessed',
        'Blessing'
  ];
  var posts = [
    'assets/images/post.jpeg',
    'assets/images/post.jpeg',
    'assets/images/post.jpeg',
    'assets/images/post.jpeg',
    'assets/images/post.jpeg',
    'assets/images/post.jpeg',
    'assets/images/post.jpeg'
  ];
  var profilename = [
    '_shimas___',
    '_siyad___',
    'safvan__kt',
    'habibi___',
    'shashi___',
    'zayn_zayn',
    'hablu'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Instagram',
          style: TextStyle(
              fontStyle: FontStyle.italic, fontSize: 30, color: Colors.black),
        ),
        elevation: 1,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.heart_broken,
                color: Colors.black,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.sms_outlined,
                color: Colors.black,
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 8, right: 8),
              child: Container(
                height: 97,
                child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (contex, index) {
                      return Column(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage(profiles[index]),
                            radius: 40,
                          ),
                          Text(names[index])
                        ],
                      );
                    },
                    separatorBuilder: (contex, index) {
                      return Padding(padding: EdgeInsets.all(5));
                    },
                    itemCount: profiles.length),
              ),
            ),
            ListView.separated(
              physics: ScrollPhysics(),
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: profilename.length,
              separatorBuilder: (cntx, index) {
                return Divider();
              },
              itemBuilder: (cntx, index) {
                return Container(
                  height: 450,
                  width: 420,
                  //color: Colors.teal,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 5.0, right: 5, top: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.red,
                              radius: 20,
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(profilename[index],
                                  style: TextStyle(color: Colors.black)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 226),
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.more_vert,
                                    color: Colors.black,
                                  )),
                            ),
                          ],
                        ),
                      ),
                      Card(
                        child: Image(image: AssetImage(posts[index])),
                      ),
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {}, icon: Icon(Icons.heart_broken)),
                          IconButton(
                              onPressed: () {}, icon: Icon(Icons.comment)),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.screen_share_outlined)),
                          Padding(
                            padding: const EdgeInsets.only(left: 219.0),
                            child: IconButton(
                                onPressed: () {}, icon: Icon(Icons.save_alt)),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:10),
                        child: Text(
                          captions[index],
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
