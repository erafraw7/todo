// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mocktail/mocktail.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:todo/bootstrap.dart';
import 'package:todo/feature/add_todo/cubit/add_todo_cubit.dart';
import 'package:todo/feature/todos/cubit/todos_cubit.dart';
import 'package:todo/provider/impl/local_storage_todos_provider.dart';
import 'package:todo/provider/todos_provider.dart';
import 'package:todo/repository/todos_repository.dart';

class MockSharedPreferences extends Mock implements SharedPreferences {}

void main() {
  setUpAll(() {
    TodosProvider provider =
        LocalStorageTodosProvider(plugin: MockSharedPreferences());
    TodosRepository repository = TodosRepository(todosProvider: provider);
    GetIt.instance.registerFactory(() => TodosCubit(repository));
    GetIt.instance.registerFactory(() => AddTodoCubit(repository));
  });
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();
  });
}
