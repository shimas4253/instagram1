import 'package:flutter/material.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

var image = [
  'https://images.indianexpress.com/2022/11/messi-vs-uae.png',
  'https://www.kreedon.com/wp-content/uploads/2021/09/Chhetri__1662026340769_1664351647362_1664351647362.webp',
  'https://images.indianexpress.com/2022/11/messi-vs-uae.png',
  'https://images.indianexpress.com/2022/11/messi-vs-uae.png',
  'https://images.indianexpress.com/2022/11/messi-vs-uae.png',
  'https://images.indianexpress.com/2022/11/messi-vs-uae.png',
  'https://www.kreedon.com/wp-content/uploads/2021/09/Chhetri__1662026340769_1664351647362_1664351647362.webp',
  'https://www.kreedon.com/wp-content/uploads/2021/09/Chhetri__1662026340769_1664351647362_1664351647362.webp',
  'https://www.kreedon.com/wp-content/uploads/2021/09/Chhetri__1662026340769_1664351647362_1664351647362.webp',
  'https://www.kreedon.com/wp-content/uploads/2021/09/Chhetri__1662026340769_1664351647362_1664351647362.webp',
  'https://www.kreedon.com/wp-content/uploads/2021/09/Chhetri__1662026340769_1664351647362_1664351647362.webp',
  'https://www.kreedon.com/wp-content/uploads/2021/09/Chhetri__1662026340769_1664351647362_1664351647362.webp',
  'https://www.kreedon.com/wp-content/uploads/2021/09/Chhetri__1662026340769_1664351647362_1664351647362.webp',
  'https://www.kreedon.com/wp-content/uploads/2021/09/Chhetri__1662026340769_1664351647362_1664351647362.webp',
  'https://www.kreedon.com/wp-content/uploads/2021/09/Chhetri__1662026340769_1664351647362_1664351647362.webp',
  'https://www.kreedon.com/wp-content/uploads/2021/09/Chhetri__1662026340769_1664351647362_1664351647362.webp',
  'https://www.kreedon.com/wp-content/uploads/2021/09/Chhetri__1662026340769_1664351647362_1664351647362.webp'
];

class searchScreen extends StatelessWidget {
  searchScreen({Key? key}) : super(key: key);

  final List<StaggeredTile> cardTile = <StaggeredTile>[
    StaggeredTile.count(2, 3),
    StaggeredTile.count(1, 1),
    StaggeredTile.count(1, 2),
    StaggeredTile.count(2, 1),
    StaggeredTile.count(3, 1),
    StaggeredTile.count(3, 1),
    StaggeredTile.count(3, 1),
    StaggeredTile.count(2, 1),
    StaggeredTile.count(3, 1),
    StaggeredTile.count(1 ,1),
    StaggeredTile.count(3, 1),
    StaggeredTile.count(3, 4),
    StaggeredTile.count(2, 1),
    StaggeredTile.count(3, 2),
    StaggeredTile.count(1, 1),
    StaggeredTile.count(2, 1),
    StaggeredTile.count(1, 3),
    StaggeredTile.count(3, 2),
  ];

  final imageData=image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 340,
                    height: 40,
                    child: TextField(
                        decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[350],
                      prefixIcon: Icon(Icons.search),
                      labelText: 'Search here',
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(10)),
                    )),
                  ),
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.location_on_outlined))
                ],
              ),
            ),
            StaggeredGridView.countBuilder(
              crossAxisCount: 3,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
              shrinkWrap: true,
              physics: ScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: Image(image: NetworkImage(image[index]),),
                );
              },
              staggeredTileBuilder: (int index) {  },
            ),

          ],
        )),
      ),
    );
  }
}

