// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:untitled/dimensions.dart';
// import 'package:untitled/small_text.dart';
//
// class ExpandableTextWidget extends StatefulWidget {
//   final String text;
//   const ExpandableTextWidget({Key? key,required this.text}) : super(key: key);
//
//   @override
//   State<ExpandableTextWidget> createState() => _ExpandableTextWidgetState();
// }
//
// class _ExpandableTextWidgetState extends State<ExpandableTextWidget> {
//
//
//   bool hiddenText=true;
//
//   double textHeight= Dimensions.screenHeight/5.63;
//
//   @override
//   void initstate()async{
//     super.initState();
//
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child:
//       secondHalf.isEmpty?SmallText(text: ,):Column(
//         children: [
//           SmallText(text: hiddenText?(firstHalf+"..."):(firstHalf+secondHalf.toString())),
//           InkWell(
//             onTap: (){
//               setState(() {
//                 hiddenText=!hiddenText;
//               });
//
//             },
//             child: Row(
//               children: [
//                 SmallText(text: "show more",color: Colors.black12,),
//                 Icon(Icons.arrow_drop_down, color: Colors.cyan,),
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
