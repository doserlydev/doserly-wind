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
@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class Product with _$Product {
  const factory Product({
    required String id,
    required String ownerId,
    required String name,
    required ProductCategory category,
    String? manufacturer,
    String? description,
    @Default(<String>[]) List<String> tags,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);
}
