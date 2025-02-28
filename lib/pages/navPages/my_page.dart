import 'package:flutter/material.dart';

import '../../misc/colors.dart';

class MyPage extends StatefulWidget {
  final String name;
  final String photoUrl;
  final String description;
  final double rating;
  final int reviewsCount;

  const MyPage({
    Key? key,
    required this.name,
    required this.photoUrl,
    required this.description,
    required this.rating,
    required this.reviewsCount,
  }) : super(key: key);

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {

  int gottenstars = 4;
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.name} Profile'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 24,),
            CircleAvatar(
              radius: 70.0,
              backgroundImage: AssetImage("imgs/pic2.jpg"),
            ),
            SizedBox(height: 20.0),
            Text(
              widget.name,
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            // Text(widget.description),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Wrap(
                  children: List.generate(5, (index) {
                    return Icon(Icons.star,
                        color: index < gottenstars
                            ? Colors.amber
                            : AppColors.textColor2);
                  }),
                ),
                SizedBox(width: 10.0),
                Text(
                  '${widget.rating} (${widget.reviewsCount} reviews)',
                  style: TextStyle(fontSize: 16.0, ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Contact tour guide
              },
              child: Text('Contact Tour Guide'),
            ),
          ],
        ),
      ),
    );
  }
}
