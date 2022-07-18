import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/app_column.dart';
import 'package:untitled/app_icon.dart';
import 'package:untitled/dimensions.dart';
import 'package:untitled/expandable_text_widget.dart';
import 'package:untitled/small_text.dart';

import 'big_text.dart';
import 'icon_and_text_widget.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
        children: [
          //background image
          Positioned(
            left: 0,
              right: 0,
              child: Container(
            width: double.maxFinite,
                height: Dimensions.popularFoodImgSize,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                   image: AssetImage(
                       "images/burgur.jpg"
                   )
                  )
                ),
          )),
          //icon widgets
          Positioned(
            top: Dimensions.height45,
            left: Dimensions.width20,
              right: Dimensions.width20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppIcon(icon: Icons.arrow_back_ios),
                  AppIcon(icon: Icons.shopping_cart_outlined)
                ],

          )),
          //introduction about food
          Positioned(
            left: 0,
              right: 0,
              bottom: 0,
              top: Dimensions.popularFoodImgSize-20,
              child: Container(
                padding: EdgeInsets.only(left: Dimensions.width20,right: Dimensions.width20,top: Dimensions.height20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(Dimensions.radius20),
                    topLeft: Radius.circular(Dimensions.radius20),
                  ),
                  color: Colors.white
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                    AppColumn(text: "Burgur",),
                    SizedBox(height: Dimensions.height20,),
                    BigText(text: "Introduce"),
                    SizedBox(height: Dimensions.height20,),
                     SingleChildScrollView(child:Text( "aaje guruvar chhe , aa special item par tamne special discount aapvamna avse , to aa offer no lavo leva aap apna snehijano sah achuk padharjo ? aaje guruvar chhe , aa special item par tamne special discount aapvamna avse , to aa offer no lavo leva aap apna snehijano sah achuk padharjo aaje guruvar chhe , aa special item par tamne special discount aapvamna avse , to aa offer no lavo leva aap apna snehijano sah achuk padharjo aaje guruvar chhe , aa special item par tamne special discount aapvamna avse , to aa offer no lavo leva aap apna snehijano sah achuk padharjo aaje guruvar chhe , aa special item par tamne special discount aapvamna avse , to aa offer no lavo leva aap apna snehijano sah achuk padharjo ",maxLines: 10,) ),
                  ],

                ),

          ))
        ],
      ),
      bottomNavigationBar: Container(
        height: Dimensions.bottomHeightBar,
        padding: EdgeInsets.only(top: Dimensions.height30,bottom: Dimensions.height30,left: Dimensions.width20,right: Dimensions.width20),
        decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Dimensions.radius20*2),
            topRight: Radius.circular(Dimensions.radius20*2),

          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(top: Dimensions.height20,bottom: Dimensions.height20,left: Dimensions.width20,right: Dimensions.width20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Icon(Icons.remove, color: Colors.grey,),
                  SizedBox(width: Dimensions.width10/2,),
                  BigText(text: "0"),
                  SizedBox(width: Dimensions.width10/2,),
                  Icon(Icons.add, color: Colors.grey,),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: Dimensions.height20,bottom: Dimensions.height20,left: Dimensions.width20,right: Dimensions.width20),
              child: BigText(text:"\$10 | Add to Cart",color: Colors.white, ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: Colors.cyan,
              ),
            )
          ],
        ),
      ),
    );
  }
}
