import 'package:flutter/material.dart';
import 'package:untitled/big_text.dart';
import 'package:untitled/dimensions.dart';
import 'package:untitled/small_text.dart';

import 'Food_Page_Body.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(

            child: Container(
              margin: EdgeInsets.only(top:Dimensions.height45, bottom:Dimensions.height15),
              padding: EdgeInsets.only(left: Dimensions.width20,right: Dimensions.width20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                     BigText(text: "India",color: Colors.greenAccent,size:20,),
                     Row(
                       children: [
                         SmallText(text: "gujarat", size: 10,color: Colors.grey,),
                         Icon(Icons.arrow_drop_down,size: 15,)
                       ],
                     ),
                    ],
                  ),
                  Center(
                    child: Container(
                      width: Dimensions.height45,
                      height: Dimensions.height45,
                      child: Icon(Icons.content_paste_search,color:Colors.white,size: Dimensions.iconsize24,),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimensions.radius15),
                        color: Colors.greenAccent,

                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
         Expanded(child: SingleChildScrollView(
           child:  FoodPageBody(),
         )),
        ],
      ),
    );
  }
}
