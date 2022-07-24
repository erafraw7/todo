// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i3;

import '../feature/add_todo/cubit/add_todo_cubit.dart' as _i7;
import '../feature/todos/cubit/todos_cubit.dart' as _i8;
import '../provider/impl/local_storage_todos_provider.dart' as _i5;
import '../provider/todos_provider.dart' as _i4;
import '../repository/todos_repository.dart' as _i6;
import 'module.dart' as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final module = _$Module();
  await gh.factoryAsync<_i3.SharedPreferences>(() => module.prefs,
      preResolve: true);
  gh.lazySingleton<_i4.TodosProvider>(() =>
      _i5.LocalStorageTodosProvider(plugin: get<_i3.SharedPreferences>()));
  gh.singleton<_i6.TodosRepository>(
      _i6.TodosRepository(todosProvider: get<_i4.TodosProvider>()));
  gh.factory<_i7.AddTodoCubit>(
      () => _i7.AddTodoCubit(get<_i6.TodosRepository>()));
  gh.factory<_i8.TodosCubit>(() => _i8.TodosCubit(get<_i6.TodosRepository>()));
  return get;
}

class _$Module extends _i9.Module {}
