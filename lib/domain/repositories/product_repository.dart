import '../entities/product.dart';

abstract class ProductRepository {
  Future<List<Product>> listProducts({String? ownerId});

  Future<Product> upsertProduct(Product product);

  Future<void> deleteProduct(String productId);
}
