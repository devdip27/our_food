import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/small_text.dart';

import 'big_text.dart';
import 'dimensions.dart';
import 'icon_and_text_widget.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({Key? key,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(text: text,size: Dimensions.font26,),
        SizedBox(height: Dimensions.height10,),
        //comment section
        Row(

          children: [
            Wrap(
              children: List.generate(5, (index) { return Icon(Icons.star, color: Colors.greenAccent, size: 15,);}),
            ),
            SizedBox(width: 15,),
            SmallText(text: "4.5", size: 8,color: Colors.grey,),
            SizedBox(width: 10,),
            SmallText(text: "2864", size: 8,color: Colors.grey,),
            SizedBox(width: 2,),
            SmallText(text: "comments", size:8,color: Colors.grey,)
          ],
        ),
        SizedBox(height: Dimensions.height20,),
        //tome and distance
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconAndTextWidget(icon: Icons.circle_sharp,
                text: "Normal",
                color: Colors.grey,
                iconcolor: Colors.orange),
            IconAndTextWidget(icon: Icons.location_on,
                text: "1.7 KM",
                color: Colors.grey,
                iconcolor: Colors.greenAccent),
            IconAndTextWidget(icon: Icons.access_time,
                text: "32 Mins",
                color: Colors.grey,
                iconcolor: Colors.redAccent)

          ],
        ),
      ],
    );
  }
}
