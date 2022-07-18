import 'package:flutter/cupertino.dart';
import 'package:untitled/dimensions.dart';
import 'package:untitled/small_text.dart';

class IconAndTextWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;
  final Color iconcolor;
  const IconAndTextWidget({Key? key,
     required this.icon,required this.text,required this.color,required this.iconcolor
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: iconcolor,size: Dimensions.iconsize24,),
        SizedBox(width: 5,),
        SmallText(text: text, size: 7,color:color,),
      ],
    );
  }
}
