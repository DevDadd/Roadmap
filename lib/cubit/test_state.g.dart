// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_state.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$TestStateCWProxy {
  TestState name(String? name);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `TestState(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// TestState(...).copyWith(id: 12, name: "My name")
  /// ```
  TestState call({String? name});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfTestState.copyWith(...)` or call `instanceOfTestState.copyWith.fieldName(value)` for a single field.
class _$TestStateCWProxyImpl implements _$TestStateCWProxy {
  const _$TestStateCWProxyImpl(this._value);

  final TestState _value;

  @override
  TestState name(String? name) => call(name: name);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `TestState(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// TestState(...).copyWith(id: 12, name: "My name")
  /// ```
  TestState call({Object? name = const $CopyWithPlaceholder()}) {
    return TestState(
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
    );
  }
}

extension $TestStateCopyWith on TestState {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfTestState.copyWith(...)` or `instanceOfTestState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$TestStateCWProxy get copyWith => _$TestStateCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TestState _$TestStateFromJson(Map<String, dynamic> json) =>
    TestState(name: json['name'] as String?);

Map<String, dynamic> _$TestStateToJson(TestState instance) => <String, dynamic>{
  'name': instance.name,
};
