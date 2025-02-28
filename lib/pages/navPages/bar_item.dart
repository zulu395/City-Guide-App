import 'package:cityguideapp/widgets/app_large_text.dart';
import 'package:flutter/material.dart';


class BarItemPage extends StatelessWidget {
  var images = [
    "pic6.jpg",
    "pic5.jpg",
    "pic4.jpg",
    "pic3.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: AppLargeText(text: "Top Locations", color: Colors.black, size: 21,),
      ),
      body: GridView.builder(

        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.75,
        ),
        itemBuilder: (context, index) {

          return Card(
            child:

                  Container(
                    padding: EdgeInsets.all(12),
                    child: Icon(Icons.bookmark),
                    alignment: Alignment.topRight,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),

                        image:  DecorationImage(
                            image: AssetImage('imgs/${images[index]}' ?? ''),
                            fit: BoxFit.cover)),
                  ),

                // Text('Role $index'),

          );
        },
        itemCount: images.length,
      ),
    );
  }
}
