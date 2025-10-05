import '../entities/product_log.dart';

abstract class ProductLogRepository {
  Future<List<ProductLog>> listLogs({String? productId, String? ownerId});
  Future<ProductLog> upsert(ProductLog log);
  Future<void> delete(String logId);
}
