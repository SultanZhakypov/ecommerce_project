import 'package:dio/dio.dart';
import 'package:ecommerce_project/feature/data/models/product_model.dart';

class ProductRepository {
  final Dio dio;

  ProductRepository({required this.dio});
  Future<ProductModel> getAllProducts() async {
    try {
      final result = await dio.get('654bd15e-b121-49ba-a588-960956b15175');
      return ProductModel.fromJson(result.data);
    } catch (e) {
      rethrow;
    }
  }
}
