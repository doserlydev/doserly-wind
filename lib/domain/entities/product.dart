import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';
part 'product.g.dart';

enum ProductCategory {
  medication,
  supplement,
  peptide,
  homeopathic,
  other,
}

@freezed
class Product with _$Product {
  const factory Product({
    required String id,
    required String ownerId,
    required String name,
    required ProductCategory category,
    String? manufacturer,
    String? description,
    List<String>? tags,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);
}
