// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_log.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ProductLog _$ProductLogFromJson(Map<String, dynamic> json) {
  return _ProductLog.fromJson(json);
}

/// @nodoc
mixin _$ProductLog {
  String get id => throw _privateConstructorUsedError;
  String get productId => throw _privateConstructorUsedError;
  String get ownerId => throw _privateConstructorUsedError;
  ProductLogType get type => throw _privateConstructorUsedError;
  DateTime? get scheduledFor => throw _privateConstructorUsedError;
  DateTime? get completedAt => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  SymptomSeverity? get severity => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this ProductLog to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductLog
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductLogCopyWith<ProductLog> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductLogCopyWith<$Res> {
  factory $ProductLogCopyWith(
    ProductLog value,
    $Res Function(ProductLog) then,
  ) = _$ProductLogCopyWithImpl<$Res, ProductLog>;
  @useResult
  $Res call({
    String id,
    String productId,
    String ownerId,
    ProductLogType type,
    DateTime? scheduledFor,
    DateTime? completedAt,
    String? notes,
    SymptomSeverity? severity,
    Map<String, dynamic>? metadata,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
}

/// @nodoc
class _$ProductLogCopyWithImpl<$Res, $Val extends ProductLog>
    implements $ProductLogCopyWith<$Res> {
  _$ProductLogCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductLog
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? productId = null,
    Object? ownerId = null,
    Object? type = null,
    Object? scheduledFor = freezed,
    Object? completedAt = freezed,
    Object? notes = freezed,
    Object? severity = freezed,
    Object? metadata = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            productId: null == productId
                ? _value.productId
                : productId // ignore: cast_nullable_to_non_nullable
                      as String,
            ownerId: null == ownerId
                ? _value.ownerId
                : ownerId // ignore: cast_nullable_to_non_nullable
                      as String,
            type: null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as ProductLogType,
            scheduledFor: freezed == scheduledFor
                ? _value.scheduledFor
                : scheduledFor // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            completedAt: freezed == completedAt
                ? _value.completedAt
                : completedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            notes: freezed == notes
                ? _value.notes
                : notes // ignore: cast_nullable_to_non_nullable
                      as String?,
            severity: freezed == severity
                ? _value.severity
                : severity // ignore: cast_nullable_to_non_nullable
                      as SymptomSeverity?,
            metadata: freezed == metadata
                ? _value.metadata
                : metadata // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProductLogImplCopyWith<$Res>
    implements $ProductLogCopyWith<$Res> {
  factory _$$ProductLogImplCopyWith(
    _$ProductLogImpl value,
    $Res Function(_$ProductLogImpl) then,
  ) = __$$ProductLogImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String productId,
    String ownerId,
    ProductLogType type,
    DateTime? scheduledFor,
    DateTime? completedAt,
    String? notes,
    SymptomSeverity? severity,
    Map<String, dynamic>? metadata,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
}

/// @nodoc
class __$$ProductLogImplCopyWithImpl<$Res>
    extends _$ProductLogCopyWithImpl<$Res, _$ProductLogImpl>
    implements _$$ProductLogImplCopyWith<$Res> {
  __$$ProductLogImplCopyWithImpl(
    _$ProductLogImpl _value,
    $Res Function(_$ProductLogImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductLog
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? productId = null,
    Object? ownerId = null,
    Object? type = null,
    Object? scheduledFor = freezed,
    Object? completedAt = freezed,
    Object? notes = freezed,
    Object? severity = freezed,
    Object? metadata = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _$ProductLogImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        productId: null == productId
            ? _value.productId
            : productId // ignore: cast_nullable_to_non_nullable
                  as String,
        ownerId: null == ownerId
            ? _value.ownerId
            : ownerId // ignore: cast_nullable_to_non_nullable
                  as String,
        type: null == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as ProductLogType,
        scheduledFor: freezed == scheduledFor
            ? _value.scheduledFor
            : scheduledFor // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        completedAt: freezed == completedAt
            ? _value.completedAt
            : completedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        notes: freezed == notes
            ? _value.notes
            : notes // ignore: cast_nullable_to_non_nullable
                  as String?,
        severity: freezed == severity
            ? _value.severity
            : severity // ignore: cast_nullable_to_non_nullable
                  as SymptomSeverity?,
        metadata: freezed == metadata
            ? _value._metadata
            : metadata // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductLogImpl implements _ProductLog {
  const _$ProductLogImpl({
    required this.id,
    required this.productId,
    required this.ownerId,
    required this.type,
    this.scheduledFor,
    this.completedAt,
    this.notes,
    this.severity,
    final Map<String, dynamic>? metadata,
    this.createdAt,
    this.updatedAt,
  }) : _metadata = metadata;

  factory _$ProductLogImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductLogImplFromJson(json);

  @override
  final String id;
  @override
  final String productId;
  @override
  final String ownerId;
  @override
  final ProductLogType type;
  @override
  final DateTime? scheduledFor;
  @override
  final DateTime? completedAt;
  @override
  final String? notes;
  @override
  final SymptomSeverity? severity;
  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'ProductLog(id: $id, productId: $productId, ownerId: $ownerId, type: $type, scheduledFor: $scheduledFor, completedAt: $completedAt, notes: $notes, severity: $severity, metadata: $metadata, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductLogImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.scheduledFor, scheduledFor) ||
                other.scheduledFor == scheduledFor) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.severity, severity) ||
                other.severity == severity) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    productId,
    ownerId,
    type,
    scheduledFor,
    completedAt,
    notes,
    severity,
    const DeepCollectionEquality().hash(_metadata),
    createdAt,
    updatedAt,
  );

  /// Create a copy of ProductLog
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductLogImplCopyWith<_$ProductLogImpl> get copyWith =>
      __$$ProductLogImplCopyWithImpl<_$ProductLogImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductLogImplToJson(this);
  }
}

abstract class _ProductLog implements ProductLog {
  const factory _ProductLog({
    required final String id,
    required final String productId,
    required final String ownerId,
    required final ProductLogType type,
    final DateTime? scheduledFor,
    final DateTime? completedAt,
    final String? notes,
    final SymptomSeverity? severity,
    final Map<String, dynamic>? metadata,
    final DateTime? createdAt,
    final DateTime? updatedAt,
  }) = _$ProductLogImpl;

  factory _ProductLog.fromJson(Map<String, dynamic> json) =
      _$ProductLogImpl.fromJson;

  @override
  String get id;
  @override
  String get productId;
  @override
  String get ownerId;
  @override
  ProductLogType get type;
  @override
  DateTime? get scheduledFor;
  @override
  DateTime? get completedAt;
  @override
  String? get notes;
  @override
  SymptomSeverity? get severity;
  @override
  Map<String, dynamic>? get metadata;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;

  /// Create a copy of ProductLog
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductLogImplCopyWith<_$ProductLogImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
