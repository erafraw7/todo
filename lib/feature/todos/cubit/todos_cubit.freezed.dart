// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'todos_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TodosStateTearOff {
  const _$TodosStateTearOff();

  TodosStateInitial initial() {
    return const TodosStateInitial();
  }

  TodosStateLoading loading() {
    return const TodosStateLoading();
  }

  TodosStateSuccess success(List<Todo> todos, TodosTypeState type) {
    return TodosStateSuccess(
      todos,
      type,
    );
  }

  TodosStateFailed failure() {
    return const TodosStateFailed();
  }
}

/// @nodoc
const $TodosState = _$TodosStateTearOff();

/// @nodoc
mixin _$TodosState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Todo> todos, TodosTypeState type) success,
    required TResult Function() failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Todo> todos, TodosTypeState type)? success,
    TResult Function()? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Todo> todos, TodosTypeState type)? success,
    TResult Function()? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TodosStateInitial value) initial,
    required TResult Function(TodosStateLoading value) loading,
    required TResult Function(TodosStateSuccess value) success,
    required TResult Function(TodosStateFailed value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TodosStateInitial value)? initial,
    TResult Function(TodosStateLoading value)? loading,
    TResult Function(TodosStateSuccess value)? success,
    TResult Function(TodosStateFailed value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodosStateInitial value)? initial,
    TResult Function(TodosStateLoading value)? loading,
    TResult Function(TodosStateSuccess value)? success,
    TResult Function(TodosStateFailed value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodosStateCopyWith<$Res> {
  factory $TodosStateCopyWith(
          TodosState value, $Res Function(TodosState) then) =
      _$TodosStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TodosStateCopyWithImpl<$Res> implements $TodosStateCopyWith<$Res> {
  _$TodosStateCopyWithImpl(this._value, this._then);

  final TodosState _value;
  // ignore: unused_field
  final $Res Function(TodosState) _then;
}

/// @nodoc
abstract class $TodosStateInitialCopyWith<$Res> {
  factory $TodosStateInitialCopyWith(
          TodosStateInitial value, $Res Function(TodosStateInitial) then) =
      _$TodosStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$TodosStateInitialCopyWithImpl<$Res>
    extends _$TodosStateCopyWithImpl<$Res>
    implements $TodosStateInitialCopyWith<$Res> {
  _$TodosStateInitialCopyWithImpl(
      TodosStateInitial _value, $Res Function(TodosStateInitial) _then)
      : super(_value, (v) => _then(v as TodosStateInitial));

  @override
  TodosStateInitial get _value => super._value as TodosStateInitial;
}

/// @nodoc

class _$TodosStateInitial implements TodosStateInitial {
  const _$TodosStateInitial();

  @override
  String toString() {
    return 'TodosState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is TodosStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Todo> todos, TodosTypeState type) success,
    required TResult Function() failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Todo> todos, TodosTypeState type)? success,
    TResult Function()? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Todo> todos, TodosTypeState type)? success,
    TResult Function()? failure,
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
    required TResult Function(TodosStateInitial value) initial,
    required TResult Function(TodosStateLoading value) loading,
    required TResult Function(TodosStateSuccess value) success,
    required TResult Function(TodosStateFailed value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TodosStateInitial value)? initial,
    TResult Function(TodosStateLoading value)? loading,
    TResult Function(TodosStateSuccess value)? success,
    TResult Function(TodosStateFailed value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodosStateInitial value)? initial,
    TResult Function(TodosStateLoading value)? loading,
    TResult Function(TodosStateSuccess value)? success,
    TResult Function(TodosStateFailed value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class TodosStateInitial implements TodosState {
  const factory TodosStateInitial() = _$TodosStateInitial;
}

/// @nodoc
abstract class $TodosStateLoadingCopyWith<$Res> {
  factory $TodosStateLoadingCopyWith(
          TodosStateLoading value, $Res Function(TodosStateLoading) then) =
      _$TodosStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$TodosStateLoadingCopyWithImpl<$Res>
    extends _$TodosStateCopyWithImpl<$Res>
    implements $TodosStateLoadingCopyWith<$Res> {
  _$TodosStateLoadingCopyWithImpl(
      TodosStateLoading _value, $Res Function(TodosStateLoading) _then)
      : super(_value, (v) => _then(v as TodosStateLoading));

  @override
  TodosStateLoading get _value => super._value as TodosStateLoading;
}

/// @nodoc

class _$TodosStateLoading implements TodosStateLoading {
  const _$TodosStateLoading();

  @override
  String toString() {
    return 'TodosState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is TodosStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Todo> todos, TodosTypeState type) success,
    required TResult Function() failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Todo> todos, TodosTypeState type)? success,
    TResult Function()? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Todo> todos, TodosTypeState type)? success,
    TResult Function()? failure,
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
    required TResult Function(TodosStateInitial value) initial,
    required TResult Function(TodosStateLoading value) loading,
    required TResult Function(TodosStateSuccess value) success,
    required TResult Function(TodosStateFailed value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TodosStateInitial value)? initial,
    TResult Function(TodosStateLoading value)? loading,
    TResult Function(TodosStateSuccess value)? success,
    TResult Function(TodosStateFailed value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodosStateInitial value)? initial,
    TResult Function(TodosStateLoading value)? loading,
    TResult Function(TodosStateSuccess value)? success,
    TResult Function(TodosStateFailed value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class TodosStateLoading implements TodosState {
  const factory TodosStateLoading() = _$TodosStateLoading;
}

/// @nodoc
abstract class $TodosStateSuccessCopyWith<$Res> {
  factory $TodosStateSuccessCopyWith(
          TodosStateSuccess value, $Res Function(TodosStateSuccess) then) =
      _$TodosStateSuccessCopyWithImpl<$Res>;
  $Res call({List<Todo> todos, TodosTypeState type});

  $TodosTypeStateCopyWith<$Res> get type;
}

/// @nodoc
class _$TodosStateSuccessCopyWithImpl<$Res>
    extends _$TodosStateCopyWithImpl<$Res>
    implements $TodosStateSuccessCopyWith<$Res> {
  _$TodosStateSuccessCopyWithImpl(
      TodosStateSuccess _value, $Res Function(TodosStateSuccess) _then)
      : super(_value, (v) => _then(v as TodosStateSuccess));

  @override
  TodosStateSuccess get _value => super._value as TodosStateSuccess;

  @override
  $Res call({
    Object? todos = freezed,
    Object? type = freezed,
  }) {
    return _then(TodosStateSuccess(
      todos == freezed
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
      type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TodosTypeState,
    ));
  }

  @override
  $TodosTypeStateCopyWith<$Res> get type {
    return $TodosTypeStateCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value));
    });
  }
}

/// @nodoc

class _$TodosStateSuccess implements TodosStateSuccess {
  const _$TodosStateSuccess(this.todos, this.type);

  @override
  final List<Todo> todos;
  @override
  final TodosTypeState type;

  @override
  String toString() {
    return 'TodosState.success(todos: $todos, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TodosStateSuccess &&
            (identical(other.todos, todos) ||
                const DeepCollectionEquality().equals(other.todos, todos)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(todos) ^
      const DeepCollectionEquality().hash(type);

  @JsonKey(ignore: true)
  @override
  $TodosStateSuccessCopyWith<TodosStateSuccess> get copyWith =>
      _$TodosStateSuccessCopyWithImpl<TodosStateSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Todo> todos, TodosTypeState type) success,
    required TResult Function() failure,
  }) {
    return success(todos, type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Todo> todos, TodosTypeState type)? success,
    TResult Function()? failure,
  }) {
    return success?.call(todos, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Todo> todos, TodosTypeState type)? success,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(todos, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TodosStateInitial value) initial,
    required TResult Function(TodosStateLoading value) loading,
    required TResult Function(TodosStateSuccess value) success,
    required TResult Function(TodosStateFailed value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TodosStateInitial value)? initial,
    TResult Function(TodosStateLoading value)? loading,
    TResult Function(TodosStateSuccess value)? success,
    TResult Function(TodosStateFailed value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodosStateInitial value)? initial,
    TResult Function(TodosStateLoading value)? loading,
    TResult Function(TodosStateSuccess value)? success,
    TResult Function(TodosStateFailed value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class TodosStateSuccess implements TodosState {
  const factory TodosStateSuccess(List<Todo> todos, TodosTypeState type) =
      _$TodosStateSuccess;

  List<Todo> get todos => throw _privateConstructorUsedError;
  TodosTypeState get type => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TodosStateSuccessCopyWith<TodosStateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodosStateFailedCopyWith<$Res> {
  factory $TodosStateFailedCopyWith(
          TodosStateFailed value, $Res Function(TodosStateFailed) then) =
      _$TodosStateFailedCopyWithImpl<$Res>;
}

/// @nodoc
class _$TodosStateFailedCopyWithImpl<$Res>
    extends _$TodosStateCopyWithImpl<$Res>
    implements $TodosStateFailedCopyWith<$Res> {
  _$TodosStateFailedCopyWithImpl(
      TodosStateFailed _value, $Res Function(TodosStateFailed) _then)
      : super(_value, (v) => _then(v as TodosStateFailed));

  @override
  TodosStateFailed get _value => super._value as TodosStateFailed;
}

/// @nodoc

class _$TodosStateFailed implements TodosStateFailed {
  const _$TodosStateFailed();

  @override
  String toString() {
    return 'TodosState.failure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is TodosStateFailed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Todo> todos, TodosTypeState type) success,
    required TResult Function() failure,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Todo> todos, TodosTypeState type)? success,
    TResult Function()? failure,
  }) {
    return failure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Todo> todos, TodosTypeState type)? success,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TodosStateInitial value) initial,
    required TResult Function(TodosStateLoading value) loading,
    required TResult Function(TodosStateSuccess value) success,
    required TResult Function(TodosStateFailed value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TodosStateInitial value)? initial,
    TResult Function(TodosStateLoading value)? loading,
    TResult Function(TodosStateSuccess value)? success,
    TResult Function(TodosStateFailed value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodosStateInitial value)? initial,
    TResult Function(TodosStateLoading value)? loading,
    TResult Function(TodosStateSuccess value)? success,
    TResult Function(TodosStateFailed value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class TodosStateFailed implements TodosState {
  const factory TodosStateFailed() = _$TodosStateFailed;
}

/// @nodoc
class _$TodosTypeStateTearOff {
  const _$TodosTypeStateTearOff();

  TodosTypeStateAll all() {
    return const TodosTypeStateAll();
  }

  TodosTypeStateInComplete incomplete() {
    return const TodosTypeStateInComplete();
  }

  TodosTypeStateComplete complete() {
    return const TodosTypeStateComplete();
  }
}

/// @nodoc
const $TodosTypeState = _$TodosTypeStateTearOff();

/// @nodoc
mixin _$TodosTypeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() all,
    required TResult Function() incomplete,
    required TResult Function() complete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? all,
    TResult Function()? incomplete,
    TResult Function()? complete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? all,
    TResult Function()? incomplete,
    TResult Function()? complete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TodosTypeStateAll value) all,
    required TResult Function(TodosTypeStateInComplete value) incomplete,
    required TResult Function(TodosTypeStateComplete value) complete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TodosTypeStateAll value)? all,
    TResult Function(TodosTypeStateInComplete value)? incomplete,
    TResult Function(TodosTypeStateComplete value)? complete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodosTypeStateAll value)? all,
    TResult Function(TodosTypeStateInComplete value)? incomplete,
    TResult Function(TodosTypeStateComplete value)? complete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodosTypeStateCopyWith<$Res> {
  factory $TodosTypeStateCopyWith(
          TodosTypeState value, $Res Function(TodosTypeState) then) =
      _$TodosTypeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TodosTypeStateCopyWithImpl<$Res>
    implements $TodosTypeStateCopyWith<$Res> {
  _$TodosTypeStateCopyWithImpl(this._value, this._then);

  final TodosTypeState _value;
  // ignore: unused_field
  final $Res Function(TodosTypeState) _then;
}

/// @nodoc
abstract class $TodosTypeStateAllCopyWith<$Res> {
  factory $TodosTypeStateAllCopyWith(
          TodosTypeStateAll value, $Res Function(TodosTypeStateAll) then) =
      _$TodosTypeStateAllCopyWithImpl<$Res>;
}

/// @nodoc
class _$TodosTypeStateAllCopyWithImpl<$Res>
    extends _$TodosTypeStateCopyWithImpl<$Res>
    implements $TodosTypeStateAllCopyWith<$Res> {
  _$TodosTypeStateAllCopyWithImpl(
      TodosTypeStateAll _value, $Res Function(TodosTypeStateAll) _then)
      : super(_value, (v) => _then(v as TodosTypeStateAll));

  @override
  TodosTypeStateAll get _value => super._value as TodosTypeStateAll;
}

/// @nodoc

class _$TodosTypeStateAll implements TodosTypeStateAll {
  const _$TodosTypeStateAll();

  @override
  String toString() {
    return 'TodosTypeState.all()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is TodosTypeStateAll);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() all,
    required TResult Function() incomplete,
    required TResult Function() complete,
  }) {
    return all();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? all,
    TResult Function()? incomplete,
    TResult Function()? complete,
  }) {
    return all?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? all,
    TResult Function()? incomplete,
    TResult Function()? complete,
    required TResult orElse(),
  }) {
    if (all != null) {
      return all();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TodosTypeStateAll value) all,
    required TResult Function(TodosTypeStateInComplete value) incomplete,
    required TResult Function(TodosTypeStateComplete value) complete,
  }) {
    return all(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TodosTypeStateAll value)? all,
    TResult Function(TodosTypeStateInComplete value)? incomplete,
    TResult Function(TodosTypeStateComplete value)? complete,
  }) {
    return all?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodosTypeStateAll value)? all,
    TResult Function(TodosTypeStateInComplete value)? incomplete,
    TResult Function(TodosTypeStateComplete value)? complete,
    required TResult orElse(),
  }) {
    if (all != null) {
      return all(this);
    }
    return orElse();
  }
}

abstract class TodosTypeStateAll implements TodosTypeState {
  const factory TodosTypeStateAll() = _$TodosTypeStateAll;
}

/// @nodoc
abstract class $TodosTypeStateInCompleteCopyWith<$Res> {
  factory $TodosTypeStateInCompleteCopyWith(TodosTypeStateInComplete value,
          $Res Function(TodosTypeStateInComplete) then) =
      _$TodosTypeStateInCompleteCopyWithImpl<$Res>;
}

/// @nodoc
class _$TodosTypeStateInCompleteCopyWithImpl<$Res>
    extends _$TodosTypeStateCopyWithImpl<$Res>
    implements $TodosTypeStateInCompleteCopyWith<$Res> {
  _$TodosTypeStateInCompleteCopyWithImpl(TodosTypeStateInComplete _value,
      $Res Function(TodosTypeStateInComplete) _then)
      : super(_value, (v) => _then(v as TodosTypeStateInComplete));

  @override
  TodosTypeStateInComplete get _value =>
      super._value as TodosTypeStateInComplete;
}

/// @nodoc

class _$TodosTypeStateInComplete implements TodosTypeStateInComplete {
  const _$TodosTypeStateInComplete();

  @override
  String toString() {
    return 'TodosTypeState.incomplete()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is TodosTypeStateInComplete);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() all,
    required TResult Function() incomplete,
    required TResult Function() complete,
  }) {
    return incomplete();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? all,
    TResult Function()? incomplete,
    TResult Function()? complete,
  }) {
    return incomplete?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? all,
    TResult Function()? incomplete,
    TResult Function()? complete,
    required TResult orElse(),
  }) {
    if (incomplete != null) {
      return incomplete();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TodosTypeStateAll value) all,
    required TResult Function(TodosTypeStateInComplete value) incomplete,
    required TResult Function(TodosTypeStateComplete value) complete,
  }) {
    return incomplete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TodosTypeStateAll value)? all,
    TResult Function(TodosTypeStateInComplete value)? incomplete,
    TResult Function(TodosTypeStateComplete value)? complete,
  }) {
    return incomplete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodosTypeStateAll value)? all,
    TResult Function(TodosTypeStateInComplete value)? incomplete,
    TResult Function(TodosTypeStateComplete value)? complete,
    required TResult orElse(),
  }) {
    if (incomplete != null) {
      return incomplete(this);
    }
    return orElse();
  }
}

abstract class TodosTypeStateInComplete implements TodosTypeState {
  const factory TodosTypeStateInComplete() = _$TodosTypeStateInComplete;
}

/// @nodoc
abstract class $TodosTypeStateCompleteCopyWith<$Res> {
  factory $TodosTypeStateCompleteCopyWith(TodosTypeStateComplete value,
          $Res Function(TodosTypeStateComplete) then) =
      _$TodosTypeStateCompleteCopyWithImpl<$Res>;
}

/// @nodoc
class _$TodosTypeStateCompleteCopyWithImpl<$Res>
    extends _$TodosTypeStateCopyWithImpl<$Res>
    implements $TodosTypeStateCompleteCopyWith<$Res> {
  _$TodosTypeStateCompleteCopyWithImpl(TodosTypeStateComplete _value,
      $Res Function(TodosTypeStateComplete) _then)
      : super(_value, (v) => _then(v as TodosTypeStateComplete));

  @override
  TodosTypeStateComplete get _value => super._value as TodosTypeStateComplete;
}

/// @nodoc

class _$TodosTypeStateComplete implements TodosTypeStateComplete {
  const _$TodosTypeStateComplete();

  @override
  String toString() {
    return 'TodosTypeState.complete()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is TodosTypeStateComplete);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() all,
    required TResult Function() incomplete,
    required TResult Function() complete,
  }) {
    return complete();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? all,
    TResult Function()? incomplete,
    TResult Function()? complete,
  }) {
    return complete?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? all,
    TResult Function()? incomplete,
    TResult Function()? complete,
    required TResult orElse(),
  }) {
    if (complete != null) {
      return complete();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TodosTypeStateAll value) all,
    required TResult Function(TodosTypeStateInComplete value) incomplete,
    required TResult Function(TodosTypeStateComplete value) complete,
  }) {
    return complete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TodosTypeStateAll value)? all,
    TResult Function(TodosTypeStateInComplete value)? incomplete,
    TResult Function(TodosTypeStateComplete value)? complete,
  }) {
    return complete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodosTypeStateAll value)? all,
    TResult Function(TodosTypeStateInComplete value)? incomplete,
    TResult Function(TodosTypeStateComplete value)? complete,
    required TResult orElse(),
  }) {
    if (complete != null) {
      return complete(this);
    }
    return orElse();
  }
}

abstract class TodosTypeStateComplete implements TodosTypeState {
  const factory TodosTypeStateComplete() = _$TodosTypeStateComplete;
}
