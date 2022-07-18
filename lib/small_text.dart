import 'package:flutter/cupertino.dart';
import 'package:untitled/dimensions.dart';

class SmallText  extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  TextOverflow overflow;
  double height;

  SmallText ({Key? key, this.color, required this.text, this.overflow=TextOverflow.ellipsis
    , this.size=20,this.height=1.2
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,

      overflow: overflow,
      style: TextStyle(
        fontSize: size,
        color: color,
        fontWeight: FontWeight.w400,
        height: height,

      ),

    );
  }
}
