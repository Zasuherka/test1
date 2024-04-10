// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ItemEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int page, int pageSize, String? sortBy, String? sortOrder)
        getTable,
    required TResult Function(String name, String measurementUnits,
            String? description, String? code)
        createNomenclature,
    required TResult Function(String id, String name, String measurementUnits,
            String? description, String? code)
        updateNomenclature,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int page, int pageSize, String? sortBy, String? sortOrder)?
        getTable,
    TResult? Function(String name, String measurementUnits, String? description,
            String? code)?
        createNomenclature,
    TResult? Function(String id, String name, String measurementUnits,
            String? description, String? code)?
        updateNomenclature,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, int pageSize, String? sortBy, String? sortOrder)?
        getTable,
    TResult Function(String name, String measurementUnits, String? description,
            String? code)?
        createNomenclature,
    TResult Function(String id, String name, String measurementUnits,
            String? description, String? code)?
        updateNomenclature,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTable value) getTable,
    required TResult Function(_CreateNomenclature value) createNomenclature,
    required TResult Function(_updateNomenclature value) updateNomenclature,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTable value)? getTable,
    TResult? Function(_CreateNomenclature value)? createNomenclature,
    TResult? Function(_updateNomenclature value)? updateNomenclature,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTable value)? getTable,
    TResult Function(_CreateNomenclature value)? createNomenclature,
    TResult Function(_updateNomenclature value)? updateNomenclature,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemEventCopyWith<$Res> {
  factory $ItemEventCopyWith(ItemEvent value, $Res Function(ItemEvent) then) =
      _$ItemEventCopyWithImpl<$Res, ItemEvent>;
}

/// @nodoc
class _$ItemEventCopyWithImpl<$Res, $Val extends ItemEvent>
    implements $ItemEventCopyWith<$Res> {
  _$ItemEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetTableImplCopyWith<$Res> {
  factory _$$GetTableImplCopyWith(
          _$GetTableImpl value, $Res Function(_$GetTableImpl) then) =
      __$$GetTableImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int page, int pageSize, String? sortBy, String? sortOrder});
}

/// @nodoc
class __$$GetTableImplCopyWithImpl<$Res>
    extends _$ItemEventCopyWithImpl<$Res, _$GetTableImpl>
    implements _$$GetTableImplCopyWith<$Res> {
  __$$GetTableImplCopyWithImpl(
      _$GetTableImpl _value, $Res Function(_$GetTableImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? pageSize = null,
    Object? sortBy = freezed,
    Object? sortOrder = freezed,
  }) {
    return _then(_$GetTableImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      sortBy: freezed == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as String?,
      sortOrder: freezed == sortOrder
          ? _value.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$GetTableImpl implements _GetTable {
  const _$GetTableImpl(
      {required this.page,
      required this.pageSize,
      this.sortBy,
      this.sortOrder});

  @override
  final int page;
  @override
  final int pageSize;
  @override
  final String? sortBy;
  @override
  final String? sortOrder;

  @override
  String toString() {
    return 'ItemEvent.getTable(page: $page, pageSize: $pageSize, sortBy: $sortBy, sortOrder: $sortOrder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTableImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.sortBy, sortBy) || other.sortBy == sortBy) &&
            (identical(other.sortOrder, sortOrder) ||
                other.sortOrder == sortOrder));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, page, pageSize, sortBy, sortOrder);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTableImplCopyWith<_$GetTableImpl> get copyWith =>
      __$$GetTableImplCopyWithImpl<_$GetTableImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int page, int pageSize, String? sortBy, String? sortOrder)
        getTable,
    required TResult Function(String name, String measurementUnits,
            String? description, String? code)
        createNomenclature,
    required TResult Function(String id, String name, String measurementUnits,
            String? description, String? code)
        updateNomenclature,
  }) {
    return getTable(page, pageSize, sortBy, sortOrder);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int page, int pageSize, String? sortBy, String? sortOrder)?
        getTable,
    TResult? Function(String name, String measurementUnits, String? description,
            String? code)?
        createNomenclature,
    TResult? Function(String id, String name, String measurementUnits,
            String? description, String? code)?
        updateNomenclature,
  }) {
    return getTable?.call(page, pageSize, sortBy, sortOrder);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, int pageSize, String? sortBy, String? sortOrder)?
        getTable,
    TResult Function(String name, String measurementUnits, String? description,
            String? code)?
        createNomenclature,
    TResult Function(String id, String name, String measurementUnits,
            String? description, String? code)?
        updateNomenclature,
    required TResult orElse(),
  }) {
    if (getTable != null) {
      return getTable(page, pageSize, sortBy, sortOrder);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTable value) getTable,
    required TResult Function(_CreateNomenclature value) createNomenclature,
    required TResult Function(_updateNomenclature value) updateNomenclature,
  }) {
    return getTable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTable value)? getTable,
    TResult? Function(_CreateNomenclature value)? createNomenclature,
    TResult? Function(_updateNomenclature value)? updateNomenclature,
  }) {
    return getTable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTable value)? getTable,
    TResult Function(_CreateNomenclature value)? createNomenclature,
    TResult Function(_updateNomenclature value)? updateNomenclature,
    required TResult orElse(),
  }) {
    if (getTable != null) {
      return getTable(this);
    }
    return orElse();
  }
}

abstract class _GetTable implements ItemEvent {
  const factory _GetTable(
      {required final int page,
      required final int pageSize,
      final String? sortBy,
      final String? sortOrder}) = _$GetTableImpl;

  int get page;
  int get pageSize;
  String? get sortBy;
  String? get sortOrder;
  @JsonKey(ignore: true)
  _$$GetTableImplCopyWith<_$GetTableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateNomenclatureImplCopyWith<$Res> {
  factory _$$CreateNomenclatureImplCopyWith(_$CreateNomenclatureImpl value,
          $Res Function(_$CreateNomenclatureImpl) then) =
      __$$CreateNomenclatureImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String name,
      String measurementUnits,
      String? description,
      String? code});
}

/// @nodoc
class __$$CreateNomenclatureImplCopyWithImpl<$Res>
    extends _$ItemEventCopyWithImpl<$Res, _$CreateNomenclatureImpl>
    implements _$$CreateNomenclatureImplCopyWith<$Res> {
  __$$CreateNomenclatureImplCopyWithImpl(_$CreateNomenclatureImpl _value,
      $Res Function(_$CreateNomenclatureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? measurementUnits = null,
    Object? description = freezed,
    Object? code = freezed,
  }) {
    return _then(_$CreateNomenclatureImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      measurementUnits: null == measurementUnits
          ? _value.measurementUnits
          : measurementUnits // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CreateNomenclatureImpl implements _CreateNomenclature {
  const _$CreateNomenclatureImpl(
      {required this.name,
      required this.measurementUnits,
      this.description,
      this.code});

  @override
  final String name;
  @override
  final String measurementUnits;
  @override
  final String? description;
  @override
  final String? code;

  @override
  String toString() {
    return 'ItemEvent.createNomenclature(name: $name, measurementUnits: $measurementUnits, description: $description, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateNomenclatureImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.measurementUnits, measurementUnits) ||
                other.measurementUnits == measurementUnits) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, measurementUnits, description, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateNomenclatureImplCopyWith<_$CreateNomenclatureImpl> get copyWith =>
      __$$CreateNomenclatureImplCopyWithImpl<_$CreateNomenclatureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int page, int pageSize, String? sortBy, String? sortOrder)
        getTable,
    required TResult Function(String name, String measurementUnits,
            String? description, String? code)
        createNomenclature,
    required TResult Function(String id, String name, String measurementUnits,
            String? description, String? code)
        updateNomenclature,
  }) {
    return createNomenclature(name, measurementUnits, description, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int page, int pageSize, String? sortBy, String? sortOrder)?
        getTable,
    TResult? Function(String name, String measurementUnits, String? description,
            String? code)?
        createNomenclature,
    TResult? Function(String id, String name, String measurementUnits,
            String? description, String? code)?
        updateNomenclature,
  }) {
    return createNomenclature?.call(name, measurementUnits, description, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, int pageSize, String? sortBy, String? sortOrder)?
        getTable,
    TResult Function(String name, String measurementUnits, String? description,
            String? code)?
        createNomenclature,
    TResult Function(String id, String name, String measurementUnits,
            String? description, String? code)?
        updateNomenclature,
    required TResult orElse(),
  }) {
    if (createNomenclature != null) {
      return createNomenclature(name, measurementUnits, description, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTable value) getTable,
    required TResult Function(_CreateNomenclature value) createNomenclature,
    required TResult Function(_updateNomenclature value) updateNomenclature,
  }) {
    return createNomenclature(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTable value)? getTable,
    TResult? Function(_CreateNomenclature value)? createNomenclature,
    TResult? Function(_updateNomenclature value)? updateNomenclature,
  }) {
    return createNomenclature?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTable value)? getTable,
    TResult Function(_CreateNomenclature value)? createNomenclature,
    TResult Function(_updateNomenclature value)? updateNomenclature,
    required TResult orElse(),
  }) {
    if (createNomenclature != null) {
      return createNomenclature(this);
    }
    return orElse();
  }
}

abstract class _CreateNomenclature implements ItemEvent {
  const factory _CreateNomenclature(
      {required final String name,
      required final String measurementUnits,
      final String? description,
      final String? code}) = _$CreateNomenclatureImpl;

  String get name;
  String get measurementUnits;
  String? get description;
  String? get code;
  @JsonKey(ignore: true)
  _$$CreateNomenclatureImplCopyWith<_$CreateNomenclatureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$updateNomenclatureImplCopyWith<$Res> {
  factory _$$updateNomenclatureImplCopyWith(_$updateNomenclatureImpl value,
          $Res Function(_$updateNomenclatureImpl) then) =
      __$$updateNomenclatureImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String id,
      String name,
      String measurementUnits,
      String? description,
      String? code});
}

/// @nodoc
class __$$updateNomenclatureImplCopyWithImpl<$Res>
    extends _$ItemEventCopyWithImpl<$Res, _$updateNomenclatureImpl>
    implements _$$updateNomenclatureImplCopyWith<$Res> {
  __$$updateNomenclatureImplCopyWithImpl(_$updateNomenclatureImpl _value,
      $Res Function(_$updateNomenclatureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? measurementUnits = null,
    Object? description = freezed,
    Object? code = freezed,
  }) {
    return _then(_$updateNomenclatureImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      measurementUnits: null == measurementUnits
          ? _value.measurementUnits
          : measurementUnits // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$updateNomenclatureImpl implements _updateNomenclature {
  const _$updateNomenclatureImpl(
      {required this.id,
      required this.name,
      required this.measurementUnits,
      this.description,
      this.code});

  @override
  final String id;
  @override
  final String name;
  @override
  final String measurementUnits;
  @override
  final String? description;
  @override
  final String? code;

  @override
  String toString() {
    return 'ItemEvent.updateNomenclature(id: $id, name: $name, measurementUnits: $measurementUnits, description: $description, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$updateNomenclatureImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.measurementUnits, measurementUnits) ||
                other.measurementUnits == measurementUnits) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, measurementUnits, description, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$updateNomenclatureImplCopyWith<_$updateNomenclatureImpl> get copyWith =>
      __$$updateNomenclatureImplCopyWithImpl<_$updateNomenclatureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int page, int pageSize, String? sortBy, String? sortOrder)
        getTable,
    required TResult Function(String name, String measurementUnits,
            String? description, String? code)
        createNomenclature,
    required TResult Function(String id, String name, String measurementUnits,
            String? description, String? code)
        updateNomenclature,
  }) {
    return updateNomenclature(id, name, measurementUnits, description, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int page, int pageSize, String? sortBy, String? sortOrder)?
        getTable,
    TResult? Function(String name, String measurementUnits, String? description,
            String? code)?
        createNomenclature,
    TResult? Function(String id, String name, String measurementUnits,
            String? description, String? code)?
        updateNomenclature,
  }) {
    return updateNomenclature?.call(
        id, name, measurementUnits, description, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, int pageSize, String? sortBy, String? sortOrder)?
        getTable,
    TResult Function(String name, String measurementUnits, String? description,
            String? code)?
        createNomenclature,
    TResult Function(String id, String name, String measurementUnits,
            String? description, String? code)?
        updateNomenclature,
    required TResult orElse(),
  }) {
    if (updateNomenclature != null) {
      return updateNomenclature(id, name, measurementUnits, description, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTable value) getTable,
    required TResult Function(_CreateNomenclature value) createNomenclature,
    required TResult Function(_updateNomenclature value) updateNomenclature,
  }) {
    return updateNomenclature(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTable value)? getTable,
    TResult? Function(_CreateNomenclature value)? createNomenclature,
    TResult? Function(_updateNomenclature value)? updateNomenclature,
  }) {
    return updateNomenclature?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTable value)? getTable,
    TResult Function(_CreateNomenclature value)? createNomenclature,
    TResult Function(_updateNomenclature value)? updateNomenclature,
    required TResult orElse(),
  }) {
    if (updateNomenclature != null) {
      return updateNomenclature(this);
    }
    return orElse();
  }
}

abstract class _updateNomenclature implements ItemEvent {
  const factory _updateNomenclature(
      {required final String id,
      required final String name,
      required final String measurementUnits,
      final String? description,
      final String? code}) = _$updateNomenclatureImpl;

  String get id;
  String get name;
  String get measurementUnits;
  String? get description;
  String? get code;
  @JsonKey(ignore: true)
  _$$updateNomenclatureImplCopyWith<_$updateNomenclatureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ItemState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Nomenclature nomenclature) successfulCreation,
    required TResult Function(String errorText) failure,
    required TResult Function(Table table) table,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Nomenclature nomenclature)? successfulCreation,
    TResult? Function(String errorText)? failure,
    TResult? Function(Table table)? table,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Nomenclature nomenclature)? successfulCreation,
    TResult Function(String errorText)? failure,
    TResult Function(Table table)? table,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessfulCreation value) successfulCreation,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Table value) table,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessfulCreation value)? successfulCreation,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Table value)? table,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessfulCreation value)? successfulCreation,
    TResult Function(_Failure value)? failure,
    TResult Function(_Table value)? table,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemStateCopyWith<$Res> {
  factory $ItemStateCopyWith(ItemState value, $Res Function(ItemState) then) =
      _$ItemStateCopyWithImpl<$Res, ItemState>;
}

/// @nodoc
class _$ItemStateCopyWithImpl<$Res, $Val extends ItemState>
    implements $ItemStateCopyWith<$Res> {
  _$ItemStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ItemStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ItemState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Nomenclature nomenclature) successfulCreation,
    required TResult Function(String errorText) failure,
    required TResult Function(Table table) table,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Nomenclature nomenclature)? successfulCreation,
    TResult? Function(String errorText)? failure,
    TResult? Function(Table table)? table,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Nomenclature nomenclature)? successfulCreation,
    TResult Function(String errorText)? failure,
    TResult Function(Table table)? table,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessfulCreation value) successfulCreation,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Table value) table,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessfulCreation value)? successfulCreation,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Table value)? table,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessfulCreation value)? successfulCreation,
    TResult Function(_Failure value)? failure,
    TResult Function(_Table value)? table,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ItemState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$ItemStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'ItemState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Nomenclature nomenclature) successfulCreation,
    required TResult Function(String errorText) failure,
    required TResult Function(Table table) table,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Nomenclature nomenclature)? successfulCreation,
    TResult? Function(String errorText)? failure,
    TResult? Function(Table table)? table,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Nomenclature nomenclature)? successfulCreation,
    TResult Function(String errorText)? failure,
    TResult Function(Table table)? table,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessfulCreation value) successfulCreation,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Table value) table,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessfulCreation value)? successfulCreation,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Table value)? table,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessfulCreation value)? successfulCreation,
    TResult Function(_Failure value)? failure,
    TResult Function(_Table value)? table,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ItemState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessfulCreationImplCopyWith<$Res> {
  factory _$$SuccessfulCreationImplCopyWith(_$SuccessfulCreationImpl value,
          $Res Function(_$SuccessfulCreationImpl) then) =
      __$$SuccessfulCreationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Nomenclature nomenclature});
}

/// @nodoc
class __$$SuccessfulCreationImplCopyWithImpl<$Res>
    extends _$ItemStateCopyWithImpl<$Res, _$SuccessfulCreationImpl>
    implements _$$SuccessfulCreationImplCopyWith<$Res> {
  __$$SuccessfulCreationImplCopyWithImpl(_$SuccessfulCreationImpl _value,
      $Res Function(_$SuccessfulCreationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nomenclature = null,
  }) {
    return _then(_$SuccessfulCreationImpl(
      nomenclature: null == nomenclature
          ? _value.nomenclature
          : nomenclature // ignore: cast_nullable_to_non_nullable
              as Nomenclature,
    ));
  }
}

/// @nodoc

class _$SuccessfulCreationImpl implements _SuccessfulCreation {
  const _$SuccessfulCreationImpl({required this.nomenclature});

  @override
  final Nomenclature nomenclature;

  @override
  String toString() {
    return 'ItemState.successfulCreation(nomenclature: $nomenclature)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessfulCreationImpl &&
            (identical(other.nomenclature, nomenclature) ||
                other.nomenclature == nomenclature));
  }

  @override
  int get hashCode => Object.hash(runtimeType, nomenclature);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessfulCreationImplCopyWith<_$SuccessfulCreationImpl> get copyWith =>
      __$$SuccessfulCreationImplCopyWithImpl<_$SuccessfulCreationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Nomenclature nomenclature) successfulCreation,
    required TResult Function(String errorText) failure,
    required TResult Function(Table table) table,
  }) {
    return successfulCreation(nomenclature);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Nomenclature nomenclature)? successfulCreation,
    TResult? Function(String errorText)? failure,
    TResult? Function(Table table)? table,
  }) {
    return successfulCreation?.call(nomenclature);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Nomenclature nomenclature)? successfulCreation,
    TResult Function(String errorText)? failure,
    TResult Function(Table table)? table,
    required TResult orElse(),
  }) {
    if (successfulCreation != null) {
      return successfulCreation(nomenclature);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessfulCreation value) successfulCreation,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Table value) table,
  }) {
    return successfulCreation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessfulCreation value)? successfulCreation,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Table value)? table,
  }) {
    return successfulCreation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessfulCreation value)? successfulCreation,
    TResult Function(_Failure value)? failure,
    TResult Function(_Table value)? table,
    required TResult orElse(),
  }) {
    if (successfulCreation != null) {
      return successfulCreation(this);
    }
    return orElse();
  }
}

abstract class _SuccessfulCreation implements ItemState {
  const factory _SuccessfulCreation(
      {required final Nomenclature nomenclature}) = _$SuccessfulCreationImpl;

  Nomenclature get nomenclature;
  @JsonKey(ignore: true)
  _$$SuccessfulCreationImplCopyWith<_$SuccessfulCreationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorText});
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$ItemStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorText = null,
  }) {
    return _then(_$FailureImpl(
      errorText: null == errorText
          ? _value.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailureImpl implements _Failure {
  const _$FailureImpl({required this.errorText});

  @override
  final String errorText;

  @override
  String toString() {
    return 'ItemState.failure(errorText: $errorText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            (identical(other.errorText, errorText) ||
                other.errorText == errorText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Nomenclature nomenclature) successfulCreation,
    required TResult Function(String errorText) failure,
    required TResult Function(Table table) table,
  }) {
    return failure(errorText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Nomenclature nomenclature)? successfulCreation,
    TResult? Function(String errorText)? failure,
    TResult? Function(Table table)? table,
  }) {
    return failure?.call(errorText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Nomenclature nomenclature)? successfulCreation,
    TResult Function(String errorText)? failure,
    TResult Function(Table table)? table,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(errorText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessfulCreation value) successfulCreation,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Table value) table,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessfulCreation value)? successfulCreation,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Table value)? table,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessfulCreation value)? successfulCreation,
    TResult Function(_Failure value)? failure,
    TResult Function(_Table value)? table,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements ItemState {
  const factory _Failure({required final String errorText}) = _$FailureImpl;

  String get errorText;
  @JsonKey(ignore: true)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TableImplCopyWith<$Res> {
  factory _$$TableImplCopyWith(
          _$TableImpl value, $Res Function(_$TableImpl) then) =
      __$$TableImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Table table});
}

/// @nodoc
class __$$TableImplCopyWithImpl<$Res>
    extends _$ItemStateCopyWithImpl<$Res, _$TableImpl>
    implements _$$TableImplCopyWith<$Res> {
  __$$TableImplCopyWithImpl(
      _$TableImpl _value, $Res Function(_$TableImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? table = null,
  }) {
    return _then(_$TableImpl(
      table: null == table
          ? _value.table
          : table // ignore: cast_nullable_to_non_nullable
              as Table,
    ));
  }
}

/// @nodoc

class _$TableImpl implements _Table {
  const _$TableImpl({required this.table});

  @override
  final Table table;

  @override
  String toString() {
    return 'ItemState.table(table: $table)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TableImpl &&
            (identical(other.table, table) || other.table == table));
  }

  @override
  int get hashCode => Object.hash(runtimeType, table);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TableImplCopyWith<_$TableImpl> get copyWith =>
      __$$TableImplCopyWithImpl<_$TableImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Nomenclature nomenclature) successfulCreation,
    required TResult Function(String errorText) failure,
    required TResult Function(Table table) table,
  }) {
    return table(this.table);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Nomenclature nomenclature)? successfulCreation,
    TResult? Function(String errorText)? failure,
    TResult? Function(Table table)? table,
  }) {
    return table?.call(this.table);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Nomenclature nomenclature)? successfulCreation,
    TResult Function(String errorText)? failure,
    TResult Function(Table table)? table,
    required TResult orElse(),
  }) {
    if (table != null) {
      return table(this.table);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessfulCreation value) successfulCreation,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Table value) table,
  }) {
    return table(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessfulCreation value)? successfulCreation,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Table value)? table,
  }) {
    return table?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessfulCreation value)? successfulCreation,
    TResult Function(_Failure value)? failure,
    TResult Function(_Table value)? table,
    required TResult orElse(),
  }) {
    if (table != null) {
      return table(this);
    }
    return orElse();
  }
}

abstract class _Table implements ItemState {
  const factory _Table({required final Table table}) = _$TableImpl;

  Table get table;
  @JsonKey(ignore: true)
  _$$TableImplCopyWith<_$TableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
