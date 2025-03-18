
import 'package:get/get.dart';
// import 'package:logger/logger.dart';
import 'package:stackfood_multivendor/api/api_client.dart';
import 'package:stackfood_multivendor/util/app_constants.dart';

import '../domain/models/food_model.dart';
import '../domain/models/food_nearly_model.dart';
import '../domain/repository/food_repository.dart';

class FoodsNearlyController extends GetxController implements GetxService {
  final FoodRepository foodRepository;
  final ApiClient apiClient;
  late List<FoodsModel> myFood = [];

  FoodsNearlyController({required this.foodRepository, required this.apiClient});

  Future<List<FoodsModel>> fetchFoodNearlyMe() async {
    Response response = (await apiClient.getData(AppConstants.foodNearly,
        headers: apiClient.getHeader()));
    if (response.statusCode == 200) {
      // Logger().d("Response ===========success result");
      // Logger().d("Response ===========${response.body}");
      response.body.forEach((e) {
        myFood.add(FoodsModel.fromJson(e));
      });
      // Logger().d("myFood ===========waiting");
      // Logger().d("myFood ===========${myFood}");
      // Logger().d("myFood ===========success");
    } else {}
    update();
    return myFood;
  }
}
