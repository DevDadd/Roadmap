 import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'test_state.g.dart';

@CopyWith()
@JsonSerializable()
class TestState extends Equatable {
   TestState({this.name});
  String? name;
  @override
  List<Object?> get props => [name];
}

