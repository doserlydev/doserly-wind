// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      id: json['id'] as String,
      ownerId: json['ownerId'] as String,
      name: json['name'] as String,
      category: $enumDecode(_$ProductCategoryEnumMap, json['category']),
      manufacturer: json['manufacturer'] as String?,
      description: json['description'] as String?,
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ownerId': instance.ownerId,
      'name': instance.name,
      'category': _$ProductCategoryEnumMap[instance.category]!,
      'manufacturer': instance.manufacturer,
      'description': instance.description,
      'tags': instance.tags,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

const _$ProductCategoryEnumMap = {
  ProductCategory.medication: 'medication',
  ProductCategory.supplement: 'supplement',
  ProductCategory.peptide: 'peptide',
  ProductCategory.homeopathic: 'homeopathic',
  ProductCategory.other: 'other',
};
