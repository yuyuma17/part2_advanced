// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Failure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverFailure,
    required TResult Function() timeoutFailure,
    required TResult Function() unknownError,
    required TResult Function() typeCastFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? timeoutFailure,
    TResult Function()? unknownError,
    TResult Function()? typeCastFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? timeoutFailure,
    TResult Function()? unknownError,
    TResult Function()? typeCastFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(TimeoutFailure value) timeoutFailure,
    required TResult Function(UnknownError value) unknownError,
    required TResult Function(TypeCastFailure value) typeCastFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(TimeoutFailure value)? timeoutFailure,
    TResult Function(UnknownError value)? unknownError,
    TResult Function(TypeCastFailure value)? typeCastFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(TimeoutFailure value)? timeoutFailure,
    TResult Function(UnknownError value)? unknownError,
    TResult Function(TypeCastFailure value)? typeCastFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$FailureCopyWithImpl<$Res> implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  final Failure _value;
  // ignore: unused_field
  final $Res Function(Failure) _then;
}

/// @nodoc
abstract class _$$ServerFailureCopyWith<$Res> {
  factory _$$ServerFailureCopyWith(
          _$ServerFailure value, $Res Function(_$ServerFailure) then) =
      __$$ServerFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ServerFailureCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$$ServerFailureCopyWith<$Res> {
  __$$ServerFailureCopyWithImpl(
      _$ServerFailure _value, $Res Function(_$ServerFailure) _then)
      : super(_value, (v) => _then(v as _$ServerFailure));

  @override
  _$ServerFailure get _value => super._value as _$ServerFailure;
}

/// @nodoc

class _$ServerFailure implements ServerFailure {
  const _$ServerFailure();

  @override
  String toString() {
    return 'Failure.serverFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ServerFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverFailure,
    required TResult Function() timeoutFailure,
    required TResult Function() unknownError,
    required TResult Function() typeCastFailure,
  }) {
    return serverFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? timeoutFailure,
    TResult Function()? unknownError,
    TResult Function()? typeCastFailure,
  }) {
    return serverFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? timeoutFailure,
    TResult Function()? unknownError,
    TResult Function()? typeCastFailure,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(TimeoutFailure value) timeoutFailure,
    required TResult Function(UnknownError value) unknownError,
    required TResult Function(TypeCastFailure value) typeCastFailure,
  }) {
    return serverFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(TimeoutFailure value)? timeoutFailure,
    TResult Function(UnknownError value)? unknownError,
    TResult Function(TypeCastFailure value)? typeCastFailure,
  }) {
    return serverFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(TimeoutFailure value)? timeoutFailure,
    TResult Function(UnknownError value)? unknownError,
    TResult Function(TypeCastFailure value)? typeCastFailure,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(this);
    }
    return orElse();
  }
}

abstract class ServerFailure implements Failure {
  const factory ServerFailure() = _$ServerFailure;
}

/// @nodoc
abstract class _$$TimeoutFailureCopyWith<$Res> {
  factory _$$TimeoutFailureCopyWith(
          _$TimeoutFailure value, $Res Function(_$TimeoutFailure) then) =
      __$$TimeoutFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TimeoutFailureCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$$TimeoutFailureCopyWith<$Res> {
  __$$TimeoutFailureCopyWithImpl(
      _$TimeoutFailure _value, $Res Function(_$TimeoutFailure) _then)
      : super(_value, (v) => _then(v as _$TimeoutFailure));

  @override
  _$TimeoutFailure get _value => super._value as _$TimeoutFailure;
}

/// @nodoc

class _$TimeoutFailure implements TimeoutFailure {
  const _$TimeoutFailure();

  @override
  String toString() {
    return 'Failure.timeoutFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TimeoutFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverFailure,
    required TResult Function() timeoutFailure,
    required TResult Function() unknownError,
    required TResult Function() typeCastFailure,
  }) {
    return timeoutFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? timeoutFailure,
    TResult Function()? unknownError,
    TResult Function()? typeCastFailure,
  }) {
    return timeoutFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? timeoutFailure,
    TResult Function()? unknownError,
    TResult Function()? typeCastFailure,
    required TResult orElse(),
  }) {
    if (timeoutFailure != null) {
      return timeoutFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(TimeoutFailure value) timeoutFailure,
    required TResult Function(UnknownError value) unknownError,
    required TResult Function(TypeCastFailure value) typeCastFailure,
  }) {
    return timeoutFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(TimeoutFailure value)? timeoutFailure,
    TResult Function(UnknownError value)? unknownError,
    TResult Function(TypeCastFailure value)? typeCastFailure,
  }) {
    return timeoutFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(TimeoutFailure value)? timeoutFailure,
    TResult Function(UnknownError value)? unknownError,
    TResult Function(TypeCastFailure value)? typeCastFailure,
    required TResult orElse(),
  }) {
    if (timeoutFailure != null) {
      return timeoutFailure(this);
    }
    return orElse();
  }
}

abstract class TimeoutFailure implements Failure {
  const factory TimeoutFailure() = _$TimeoutFailure;
}

/// @nodoc
abstract class _$$UnknownErrorCopyWith<$Res> {
  factory _$$UnknownErrorCopyWith(
          _$UnknownError value, $Res Function(_$UnknownError) then) =
      __$$UnknownErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnknownErrorCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$$UnknownErrorCopyWith<$Res> {
  __$$UnknownErrorCopyWithImpl(
      _$UnknownError _value, $Res Function(_$UnknownError) _then)
      : super(_value, (v) => _then(v as _$UnknownError));

  @override
  _$UnknownError get _value => super._value as _$UnknownError;
}

/// @nodoc

class _$UnknownError implements UnknownError {
  const _$UnknownError();

  @override
  String toString() {
    return 'Failure.unknownError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnknownError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverFailure,
    required TResult Function() timeoutFailure,
    required TResult Function() unknownError,
    required TResult Function() typeCastFailure,
  }) {
    return unknownError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? timeoutFailure,
    TResult Function()? unknownError,
    TResult Function()? typeCastFailure,
  }) {
    return unknownError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? timeoutFailure,
    TResult Function()? unknownError,
    TResult Function()? typeCastFailure,
    required TResult orElse(),
  }) {
    if (unknownError != null) {
      return unknownError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(TimeoutFailure value) timeoutFailure,
    required TResult Function(UnknownError value) unknownError,
    required TResult Function(TypeCastFailure value) typeCastFailure,
  }) {
    return unknownError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(TimeoutFailure value)? timeoutFailure,
    TResult Function(UnknownError value)? unknownError,
    TResult Function(TypeCastFailure value)? typeCastFailure,
  }) {
    return unknownError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(TimeoutFailure value)? timeoutFailure,
    TResult Function(UnknownError value)? unknownError,
    TResult Function(TypeCastFailure value)? typeCastFailure,
    required TResult orElse(),
  }) {
    if (unknownError != null) {
      return unknownError(this);
    }
    return orElse();
  }
}

abstract class UnknownError implements Failure {
  const factory UnknownError() = _$UnknownError;
}

/// @nodoc
abstract class _$$TypeCastFailureCopyWith<$Res> {
  factory _$$TypeCastFailureCopyWith(
          _$TypeCastFailure value, $Res Function(_$TypeCastFailure) then) =
      __$$TypeCastFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TypeCastFailureCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$$TypeCastFailureCopyWith<$Res> {
  __$$TypeCastFailureCopyWithImpl(
      _$TypeCastFailure _value, $Res Function(_$TypeCastFailure) _then)
      : super(_value, (v) => _then(v as _$TypeCastFailure));

  @override
  _$TypeCastFailure get _value => super._value as _$TypeCastFailure;
}

/// @nodoc

class _$TypeCastFailure implements TypeCastFailure {
  const _$TypeCastFailure();

  @override
  String toString() {
    return 'Failure.typeCastFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TypeCastFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverFailure,
    required TResult Function() timeoutFailure,
    required TResult Function() unknownError,
    required TResult Function() typeCastFailure,
  }) {
    return typeCastFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? timeoutFailure,
    TResult Function()? unknownError,
    TResult Function()? typeCastFailure,
  }) {
    return typeCastFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? timeoutFailure,
    TResult Function()? unknownError,
    TResult Function()? typeCastFailure,
    required TResult orElse(),
  }) {
    if (typeCastFailure != null) {
      return typeCastFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(TimeoutFailure value) timeoutFailure,
    required TResult Function(UnknownError value) unknownError,
    required TResult Function(TypeCastFailure value) typeCastFailure,
  }) {
    return typeCastFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(TimeoutFailure value)? timeoutFailure,
    TResult Function(UnknownError value)? unknownError,
    TResult Function(TypeCastFailure value)? typeCastFailure,
  }) {
    return typeCastFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(TimeoutFailure value)? timeoutFailure,
    TResult Function(UnknownError value)? unknownError,
    TResult Function(TypeCastFailure value)? typeCastFailure,
    required TResult orElse(),
  }) {
    if (typeCastFailure != null) {
      return typeCastFailure(this);
    }
    return orElse();
  }
}

abstract class TypeCastFailure implements Failure {
  const factory TypeCastFailure() = _$TypeCastFailure;
}
