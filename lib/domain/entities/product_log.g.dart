// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_log.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductLog _$ProductLogFromJson(Map<String, dynamic> json) => ProductLog(
  id: json['id'] as String,
  productId: json['product_id'] as String,
  ownerId: json['owner_id'] as String,
  type: $enumDecode(_$ProductLogTypeEnumMap, json['type']),
  scheduledFor: json['scheduled_for'] == null
      ? null
      : DateTime.parse(json['scheduled_for'] as String),
  completedAt: json['completed_at'] == null
      ? null
      : DateTime.parse(json['completed_at'] as String),
  notes: json['notes'] as String?,
  severity: $enumDecodeNullable(_$SymptomSeverityEnumMap, json['severity']),
  metadata: json['metadata'] as Map<String, dynamic>,
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$ProductLogToJson(ProductLog instance) =>
    <String, dynamic>{
      'id': instance.id,
      'product_id': instance.productId,
      'owner_id': instance.ownerId,
      'type': _$ProductLogTypeEnumMap[instance.type]!,
      'scheduled_for': instance.scheduledFor?.toIso8601String(),
      'completed_at': instance.completedAt?.toIso8601String(),
      'notes': instance.notes,
      'severity': _$SymptomSeverityEnumMap[instance.severity],
      'metadata': instance.metadata,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

const _$ProductLogTypeEnumMap = {
  ProductLogType.scheduled: 'scheduled',
  ProductLogType.taken: 'taken',
  ProductLogType.skipped: 'skipped',
  ProductLogType.adjusted: 'adjusted',
  ProductLogType.sideEffect: 'sideEffect',
};

const _$SymptomSeverityEnumMap = {
  SymptomSeverity.mild: 'mild',
  SymptomSeverity.moderate: 'moderate',
  SymptomSeverity.severe: 'severe',
};

_$ProductLogImpl _$$ProductLogImplFromJson(Map<String, dynamic> json) =>
    _$ProductLogImpl(
      id: json['id'] as String,
      productId: json['productId'] as String,
      ownerId: json['ownerId'] as String,
      type: $enumDecode(_$ProductLogTypeEnumMap, json['type']),
      scheduledFor: json['scheduledFor'] == null
          ? null
          : DateTime.parse(json['scheduledFor'] as String),
      completedAt: json['completedAt'] == null
          ? null
          : DateTime.parse(json['completedAt'] as String),
      notes: json['notes'] as String?,
      severity: $enumDecodeNullable(_$SymptomSeverityEnumMap, json['severity']),
      metadata:
          json['metadata'] as Map<String, dynamic>? ??
          const <String, dynamic>{},
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$ProductLogImplToJson(_$ProductLogImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'productId': instance.productId,
      'ownerId': instance.ownerId,
      'type': _$ProductLogTypeEnumMap[instance.type]!,
      'scheduledFor': instance.scheduledFor?.toIso8601String(),
      'completedAt': instance.completedAt?.toIso8601String(),
      'notes': instance.notes,
      'severity': _$SymptomSeverityEnumMap[instance.severity],
      'metadata': instance.metadata,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
