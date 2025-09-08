import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:test2/cubit/test_state.dart';


class TestCubit extends HydratedCubit<TestState> {
  TestCubit() : super(TestState());
  void updateUser(String name){
    emit(state.copyWith(name: name));
  }
  
  @override
  TestState? fromJson(Map<String, dynamic> json) {
    // TODO: implement fromJson
    throw UnimplementedError();
  }
  
  @override
  Map<String, dynamic>? toJson(TestState state) {
    // TODO: implement toJson
    throw UnimplementedError();
  }
}
