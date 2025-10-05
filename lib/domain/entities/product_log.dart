import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_log.freezed.dart';
part 'product_log.g.dart';

enum ProductLogType { scheduled, taken, skipped, adjusted, sideEffect }

enum SymptomSeverity { mild, moderate, severe }

@freezed
@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class ProductLog with _$ProductLog {
  const factory ProductLog({
    required String id,
    required String productId,
    required String ownerId,
    required ProductLogType type,
    DateTime? scheduledFor,
    DateTime? completedAt,
    String? notes,
    SymptomSeverity? severity,
    @Default(<String, dynamic>{}) Map<String, dynamic> metadata,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _ProductLog;

  factory ProductLog.fromJson(Map<String, dynamic> json) =>
      _$ProductLogFromJson(json);
}
