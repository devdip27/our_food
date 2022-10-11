import 'package:get/get.dart';
import 'package:untitled/Data/repository/popular_prouduct_repo.dart';
import 'package:untitled/Models/ProductsApiModel.dart';

import '../Data/repository/popular_prouduct_repo.dart';

class PopularProductController extends GetxController{
  final PopularProductRepo popularProductRepo;
  PopularProductController({required this.popularProductRepo});
  List<ProductModel> _popularproductlist=[];
  List <ProductModel> get popularProductList => _popularproductlist;

  Future<void> getPopularProductList()async{
    Response response = await popularProductRepo.getPopularProductList();
    if(response.statusCode==200){
      print("got products");
      _popularproductlist=[];
      _popularproductlist.addAll(Products.fromJson(response.body).products);
      print(_popularproductlist);
      update();
    }else {

    }
  }
}