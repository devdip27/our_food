import 'package:flutter/cupertino.dart';
import 'package:untitled/dimensions.dart';

class BigText  extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  TextOverflow overflow;
  
  BigText ({Key? key, this.color, required this.text, this.overflow=TextOverflow.ellipsis
  ,  this.size=20
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
    text,
      maxLines: 1,
      overflow: overflow,
      style: TextStyle(
        fontSize: Dimensions.font20,
        color: color,
        fontWeight: FontWeight.w400,
      ),
      
    );
  }
}
