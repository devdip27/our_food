import 'package:get/get.dart';
import 'package:untitled/Data/api/api_client.dart';

class PopularProductRepo extends GetxService{
  final ApiClient apiClient;
  PopularProductRepo({required this.apiClient});

  Future<Response> getPopularProductList()async{
    return await apiClient.getData("/api/v1/product/popular");
  }
}