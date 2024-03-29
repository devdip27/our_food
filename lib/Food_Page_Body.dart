import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:untitled/Data/api/api_client.dart';
import 'package:untitled/Models/ProductsApiModel.dart';
import 'package:untitled/app_column.dart';
import 'package:untitled/big_text.dart';
import 'package:http/http.dart' as http;
import 'package:untitled/icon_and_text_widget.dart';
import 'package:untitled/small_text.dart';
import 'dimensions.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  var _currentPageValue = 0;
  double _scaleFactor = 0.8;
  double _height= Dimensions.pageViewContainer;
  var myIndicatorIndex=0;

  @override
  void initstate(){

    ProductsApi();
   pageController.addListener(() {
   setState(() {

     _currentPageValue= pageController.page! as int;
     myIndicatorIndex=pageController.page!.toInt();
     });
   });
  }
  @override
   void dispose(){
     pageController.dispose();
   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          children: [

            SizedBox(height: 50,),
            //slider section
            GestureDetector(
              onTap: (){
                ProductsApi();
              },
              child: Container(
                // color: Colors.yellowAccent,
                height: Dimensions.pageView,
                child: PageView.builder(
                    controller: pageController,
                    onPageChanged: (val){
                      _currentPageValue=val ;
                      myIndicatorIndex=val;
                      setState(() {

                      });
                    },
                    itemCount: 5,
                    itemBuilder: (context, position){
                      return _buildPageItem(position);
                    }),
              ),
            ),
         //dots
         DotsIndicator(
        dotsCount: 5,
        onTap: (val){
          myIndicatorIndex=val.toInt();
          setState(() {

          });
        },
        reversed: false,
        position: myIndicatorIndex.toDouble(),
          axis: Axis.horizontal,
        decorator: DotsDecorator(
        size: const Size.square(9.0),
        activeSize: const Size(18.0, 9.0),
        activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        ),
        ),
            //populaar text
            SizedBox(height: Dimensions.height30,),
            Container(
              margin: EdgeInsets.only(left: Dimensions.width30),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  BigText(text: "Popular"),
                  SizedBox(width: Dimensions.width10,),
                  Container(
                    margin: const EdgeInsets.only(bottom: 3),
                    child: BigText(text: ".", color: Colors.black26),
                  ),
                  SizedBox(width: Dimensions.width10,),
                  Container(
                    child: BigText(text: "Food preparing",size: 0.5,color: Colors.grey,)
                  )
                ],
              ),
            ),
            //list of food and  image

            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(left: Dimensions.width20,right: Dimensions.width20,bottom: Dimensions.height10),
                      child: Row(
                        children: [
                          //image section
                          Container(
                          width:Dimensions.listviewImgSize,
                          height: Dimensions.listviewImgSize,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(Dimensions.radius20),
                                color: Colors.white38,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                    image: AssetImage(
                                        "images/cake.jpg"
                                    )
                                )
                            ),
                          ),
                          //text container
                          Expanded(
                            child: Container(
                              height: Dimensions.listViewTextContSize,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(Dimensions.radius20),
                                  bottomRight: Radius.circular(Dimensions.radius20),
                                ),
                                color: Colors.white,
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(left: Dimensions.width10,right: Dimensions.width10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    BigText(text: "Chilly Burgur"),
                                    SizedBox(height: Dimensions.height10,),
                                    SmallText(text: "with loaded cheese and spicy's", size: 10,color: Colors.grey,),
                                    SizedBox(height: Dimensions.height10,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: const [
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
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  }),

          ],
        ),
      ),
    );
  }
  Widget _buildPageItem(int index){
    Matrix4 matrix = new Matrix4.identity();

    if(index== _currentPageValue.floor()){
      var currScale = _scaleFactor+(_currentPageValue-index)*(1-_scaleFactor);
      var currTrans = _height*(1-currScale)/2;
       matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);
    }else if(index==_currentPageValue.floor()+1) {
      var currScale = _scaleFactor+(_currentPageValue-index+1)*(1-_scaleFactor);
      var currTrans = _height*(1-currScale)/2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);

    }else if(index==_currentPageValue.floor()-1) {
      var currScale = 1-(_currentPageValue-index)*(1-_scaleFactor);
      var currTrans = _height*(1-currScale)/2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);

    }

    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          Container(
            height: Dimensions.pageViewContainer ,
            margin: EdgeInsets.only(left: Dimensions.width10,right: Dimensions.width10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius30),
                color:index.isEven?Color(0xFF69c5df):Color(0xFF9294cc),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      "images/burgur.jpg",
                    )
                )
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: Dimensions.pageViewTextContainer,
              margin: EdgeInsets.only(left: Dimensions.width30,right: Dimensions.width30,bottom: Dimensions.height30),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  color: Colors.white,
                boxShadow:[
                  BoxShadow(
                    color: Color(0xFFe8e8e8),
                    blurRadius: 5.0,
                    offset: Offset(0, 5)
                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(-5, 0)
                  ),
                  BoxShadow(
                      color: Colors.white,
                      offset: Offset(5, 0)
                  )
                ]

              ),
              child: Container(
                padding: EdgeInsets.only(top: Dimensions.height15,left: 15, right: 15),
                child: AppColumn(text: "Burgur",),
              ),

            ),
          )
        ],
      ),
    );
  }
 void ProductsApi() async{

    var res = await http.post(( Uri.https("mvs.bslmeiyu.com", "/api/v1/products/popular")),
        headers:  { },
        body: {});
    var getjsn = await jsonDecode(res.body);

    print(getjsn);



  }


}
