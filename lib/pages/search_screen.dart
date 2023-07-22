import 'package:flutter/material.dart';

var image = [
  'https://images.indianexpress.com/2022/11/messi-vs-uae.png',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCZlf5lc5tX-0gY-y94pGS0mQdL-D0lCH2OQ&usqp=CAU',
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
          ],
        )),
      ),
    );
  }
}
