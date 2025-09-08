import 'package:get_it/get_it.dart';
import 'package:test2/cubit/test_cubit.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<TestCubit>(TestCubit());
}