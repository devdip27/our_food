import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/app_icon.dart';
import 'package:untitled/big_text.dart';
import 'package:untitled/dimensions.dart';

class RecomandedFoodDetail extends StatelessWidget {
  const RecomandedFoodDetail ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 80,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
            pinned: true,
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                child: Center(child: BigText(size:Dimensions.font26,text: "Pizza side",)),
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 5,bottom: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(Dimensions.radius20),
                    topRight: Radius.circular(Dimensions.radius20),
                  )
                ),
              ),

            ),
            expandedHeight: 300,
            backgroundColor: Colors.yellow,
            flexibleSpace: FlexibleSpaceBar(
              background:Image.asset(
                  "images/pizza.jpg",
                      width: double.maxFinite,
                      fit: BoxFit.cover,

              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  child: Text(
                      "aaje guruvar chhe , aa special item par tamne special discount aapvamna avse , to aa offer no lavo leva aap apna snehijano sah achuk padharjo ? aaje guruvar chhe , aa special item par tamne special discount aapvamna avse , to aa offer no lavo leva aap apna snehijano sah achuk padharjo aaje guruvar chhe , aa special item par tamne special discount aapvamna avse , to aa offer no lavo leva aap apna snehijano sah achuk padharjo aaje guruvar chhe , aa special item par tamne special discount aapvamna avse , to aa offer no lavo leva aap apna snehijano sah achuk padharjo aaje guruvar chhe , aa special item par tamne special discount aapvamna avse , to aa offer no lavo leva aap apna snehijano sah achuk padharjo aaje guruvar chhe , aa special item par tamne special discount aapvamna avse , to aa offer no lavo leva aap apna snehijano sah achuk padharjo ? aaje guruvar chhe , aa special item par tamne special discount aapvamna avse , to aa offer no lavo leva aap apna snehijano sah achuk padharjo aaje guruvar chhe , aa special item par tamne special discount aapvamna avse , to aa offer no lavo leva aap apna snehijano sah achuk padharjo aaje guruvar chhe , aa special item par tamne special discount aapvamna avse , to aa offer no lavo leva aap apna snehijano sah achuk padharjo aaje guruvar chhe , aa special item par tamne special discount aapvamna avse , to aa offer no lavo leva aap apna snehijano sah achuk padharjo aaje guruvar chhe , aa special item par tamne special discount aapvamna avse , to aa offer no lavo leva aap apna snehijano sah achuk padharjo ? aaje guruvar chhe , aa special item par tamne special discount aapvamna avse , to aa offer no lavo leva aap apna snehijano sah achuk padharjo aaje guruvar chhe , aa special item par tamne special discount aapvamna avse , to aa offer no lavo leva aap apna snehijano sah achuk padharjo aaje guruvar chhe , aa special item par tamne special discount aapvamna avse , to aa offer no lavo leva aap apna snehijano sah achuk padharjo aaje guruvar chhe , aa special item par tamne special discount aapvamna avse , to aa offer no lavo leva aap apna snehijano sah achuk padharjo aaje guruvar chhe , aa special item par tamne special discount aapvamna avse , to aa offer no lavo leva aap apna snehijano sah achuk padharjo ? aaje guruvar chhe , aa special item par tamne special discount aapvamna avse , to aa offer no lavo leva aap apna snehijano sah achuk padharjo aaje guruvar chhe , aa special item par tamne special discount aapvamna avse , to aa offer no lavo leva aap apna snehijano sah achuk padharjo aaje guruvar chhe , aa special item par tamne special discount aapvamna avse , to aa offer no lavo leva aap apna snehijano sah achuk padharjo aaje guruvar chhe , aa special item par tamne special discount aapvamna avse , to aa offer no lavo leva aap apna snehijano sah achuk padharjo aaje guruvar chhe , aa special item par tamne special discount aapvamna avse , to aa offer no lavo leva aap apna snehijano sah achuk padharjo ? aaje guruvar chhe , aa special item par tamne special discount aapvamna avse , to aa offer no lavo leva aap apna snehijano sah achuk padharjo aaje guruvar chhe , aa special item par tamne special discount aapvamna avse , to aa offer no lavo leva aap apna snehijano sah achuk padharjo aaje guruvar chhe , aa special item par tamne special discount aapvamna avse , to aa offer no lavo leva aap apna snehijano sah achuk padharjo aaje guruvar chhe , aa special item par tamne special discount aapvamna avse , to aa offer no lavo leva aap apna snehijano sah achuk padharjo aaje guruvar chhe , aa special item par tamne special discount aapvamna avse , to aa offer no lavo leva aap apna snehijano sah achuk padharjo ? aaje guruvar chhe , aa special item par tamne special discount aapvamna avse , to aa offer no lavo leva aap apna snehijano sah achuk padharjo aaje guruvar chhe , aa special item par tamne special discount aapvamna avse , to aa offer no lavo leva aap apna snehijano sah achuk padharjo aaje guruvar chhe , aa special item par tamne special discount aapvamna avse , to aa offer no lavo leva aap apna snehijano sah achuk padharjo aaje guruvar chhe , aa special item par tamne special discount aapvamna avse , to aa offer no lavo leva aap apna snehijano sah achuk padharjo  "
                  ),
                  margin: EdgeInsets.only(left: Dimensions.width20,right: Dimensions.width20),
                )
              ],

            )
          ),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: Dimensions.width20*2.5,
              right: Dimensions.width20*2.5,
              top: Dimensions.height10,
              bottom: Dimensions.height10
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                    iconsize: Dimensions.iconsize24,
                    iconcolor: Colors.white,
                    backgroundcolor: Colors.greenAccent,
                    icon: Icons.remove),
                   BigText(text: "\12.88"+" x "+" 0 ",color: Colors.black,size: Dimensions.font26,),
                MaterialButton(
                  minWidth: 50,
                  height: 50,
                  padding: EdgeInsets.zero,
                  splashColor: Colors.red,
                  onPressed: (){

                  },
                    child: AppIcon(
                      iconsize: Dimensions.iconsize24,
                      iconcolor: Colors.white,
                      backgroundcolor: Colors.greenAccent,
                      icon: Icons.add),
                ),
              ],
            ),
          ),
          Container(
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
                  padding: EdgeInsets.only(top: Dimensions.height10,bottom: Dimensions.height10,left: Dimensions.width20,right: Dimensions.width20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                    color: Colors.white,
                  ),
                  child: Icon(
                    Icons.favorite,
                    color: Colors.greenAccent,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: Dimensions.height10,bottom: Dimensions.height10,left: Dimensions.width20,right: Dimensions.width20),
                  child: BigText(text:"\$10 | Add to Cart",color: Colors.white,size: 5, ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                    color: Colors.greenAccent,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
