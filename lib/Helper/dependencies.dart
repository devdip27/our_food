import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:untitled/Data/api/api_client.dart';

import '../Data/repository/popular_prouduct_repo.dart';

import '../Data/repository/popular_prouduct_repo.dart';
import '../controllers/popular_product_controller.dart';

Future<void> init()async {
  //api client
 Get.lazyPut(()=>ApiClient(appBaseUrl:"http://mvs.bslmeiyu.com"));

 //repos
 Get.lazyPut(() => PopularProductRepo(apiClient:Get.find()));

 //controllers
 Get.lazyPut(() => PopularProductController(popularProductRepo:Get.find()));
}