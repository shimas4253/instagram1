import 'package:flutter/material.dart';

class searchScreen extends StatelessWidget {
  const searchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
    );
  }
}
