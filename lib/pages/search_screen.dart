import 'package:flutter/material.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

var image = [
  'https://media.istockphoto.com/id/1146517111/photo/taj-mahal-mausoleum-in-agra.jpg?s=612x612&w=0&k=20&c=vcIjhwUrNyjoKbGbAQ5sOcEzDUgOfCsm9ySmJ8gNeRk=',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRb9iDPi3HniEkNc8T2B3ZWXPawjRHdfZcZ3Q&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSE07RTpAzIaDf5TzlGa7yP8Wz89b7SaYBnmg&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRb9iDPi3HniEkNc8T2B3ZWXPawjRHdfZcZ3Q&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcReFjO6rbNAKcZtfgpqkhnqWGPwcH5hAArN1A&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUT2jLYoIC9Lg65AVA5KhEUdJdWFm0-vznZg&usqp=CAU',
 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRb9iDPi3HniEkNc8T2B3ZWXPawjRHdfZcZ3Q&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRb9iDPi3HniEkNc8T2B3ZWXPawjRHdfZcZ3Q&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQBQQfBzEsqTN91MHwdukq0yaBxWIcn5RjUw&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcReFjO6rbNAKcZtfgpqkhnqWGPwcH5hAArN1A&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQBQQfBzEsqTN91MHwdukq0yaBxWIcn5RjUw&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvyNBVxx89iMlyjvccotDgoeoW-fGkbOr_5w&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUT2jLYoIC9Lg65AVA5KhEUdJdWFm0-vznZg&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRb9iDPi3HniEkNc8T2B3ZWXPawjRHdfZcZ3Q&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcReFjO6rbNAKcZtfgpqkhnqWGPwcH5hAArN1A&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRb9iDPi3HniEkNc8T2B3ZWXPawjRHdfZcZ3Q&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUT2jLYoIC9Lg65AVA5KhEUdJdWFm0-vznZg&usqp=CAU'
];

class searchScreen extends StatelessWidget {

  final List<StaggeredTile> cartTile = <StaggeredTile>[
    StaggeredTile.count(1, 1),
    StaggeredTile.count(1, 1),
    StaggeredTile.count(1, 2),
    StaggeredTile.count(1, 1),
    StaggeredTile.count(1, 1),
    StaggeredTile.count(1, 1),
    StaggeredTile.count(1, 1),
    StaggeredTile.count(1, 1),
    StaggeredTile.count(1, 1),
    StaggeredTile.count(1, 1),
    StaggeredTile.count(1, 1),
    StaggeredTile.count(1, 2),
    StaggeredTile.count(1, 1),
    StaggeredTile.count(1, 1),
    StaggeredTile.count(1, 1),
    StaggeredTile.count(1, 1),
    StaggeredTile.count(1, 1),
  ];
  final List<Widget> out = <Widget>[
    tiles(bgimage: image[0]),
    tiles(bgimage: image[1]),
    tiles(bgimage: image[2]),
    tiles(bgimage: image[3]),
    tiles(bgimage: image[4]),
    tiles(bgimage: image[5]),
    tiles(bgimage: image[6]),
    tiles(bgimage: image[7]),
    tiles(bgimage: image[8]),
    tiles(bgimage: image[9]),
    tiles(bgimage: image[10]),
    tiles(bgimage: image[11]),
    tiles(bgimage: image[12]),
    tiles(bgimage: image[13]),
    tiles(bgimage: image[14]),
    tiles(bgimage: image[15]),
    tiles(bgimage: image[16]),
  ];

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
                          borderSide: BorderSide(color: Colors.white,width: 3),
                          borderRadius: BorderRadius.circular(10)),
                    )),
                  ),
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.location_on_outlined))
                ],
              ),
            ),
            StaggeredGridView.count(
              physics: ScrollPhysics(),
              shrinkWrap: true,
              crossAxisCount: 3,
              crossAxisSpacing: 2,
              mainAxisSpacing: 2,
              staggeredTiles: cartTile,
              children: out,
            )
          ],
        )),
      ),
    );
  }
}

class tiles extends StatelessWidget {
  final String bgimage;

  tiles({required this.bgimage});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      child: Image(image: NetworkImage(bgimage),fit: BoxFit.fill,),
    );
  }
}
