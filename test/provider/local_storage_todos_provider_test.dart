// ignore_for_file: prefer_const_constructors
import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:todo/api/models/todo.dart';
import 'package:todo/provider/impl/local_storage_todos_provider.dart';
import 'package:todo/provider/todos_provider.dart';

class MockSharedPreferences extends Mock implements SharedPreferences {}

void main() {
  group('LocalStorageTodosProvider', () {
    late SharedPreferences plugin;

    final todos = [
      Todo(
        id: '1',
        title: 'title 1',
      ),
      Todo(
        id: '2',
        title: 'title 2',
      ),
      Todo(
        id: '3',
        title: 'title 3',
        isCompleted: true,
      ),
    ];

    setUp(() {
      plugin = MockSharedPreferences();
      when(() => plugin.getString(any())).thenReturn(json.encode(todos));
      when(() => plugin.setString(any(), any())).thenAnswer((_) async => true);
    });

    LocalStorageTodosProvider createSubject() {
      return LocalStorageTodosProvider(
        plugin: plugin,
      );
    }

    group('constructor', () {
      test('works properly', () {
        expect(
          createSubject,
          returnsNormally,
        );
      });

      group('initializes the todos stream', () {
        test('with existing todos if present', () {
          final subject = createSubject();

          expect(subject.getTodos(), emits(todos));
          verify(
            () => plugin.getString(
              LocalStorageTodosProvider.kTodosCollectionKey,
            ),
          ).called(1);
        });

        test('with empty list if no todos present', () {
          when(() => plugin.getString(any())).thenReturn(null);

          final subject = createSubject();

          expect(subject.getTodos(), emits(const <Todo>[]));
          verify(
            () => plugin.getString(
              LocalStorageTodosProvider.kTodosCollectionKey,
            ),
          ).called(1);
        });
      });
    });

    test('getTodos returns stream of current list todos', () {
      expect(
        createSubject().getTodos(),
        emits(todos),
      );
    });

    group('saveTodo', () {
      test('saves new todos', () {
        final newTodo = Todo(
          id: '4',
          title: 'title 4',
        );

        final newTodos = [...todos, newTodo];

        final subject = createSubject();

        expect(subject.saveTodo(newTodo), completes);
        expect(subject.getTodos(), emits(newTodos));

        verify(
          () => plugin.setString(
            LocalStorageTodosProvider.kTodosCollectionKey,
            json.encode(newTodos),
          ),
        ).called(1);
      });

      test('updates existing todos', () {
        final updatedTodo = Todo(
          id: '1',
          title: 'new title 1',
          isCompleted: true,
        );
        final newTodos = [updatedTodo, ...todos.sublist(1)];

        final subject = createSubject();

        expect(subject.saveTodo(updatedTodo), completes);
        expect(subject.getTodos(), emits(newTodos));

        verify(
          () => plugin.setString(
            LocalStorageTodosProvider.kTodosCollectionKey,
            json.encode(newTodos),
          ),
        ).called(1);
      });
    });

    group('deleteTodo', () {
      test('deletes existing todos', () {
        final newTodos = todos.sublist(1);

        final subject = createSubject();

        expect(subject.deleteTodo(todos[0].id), completes);
        expect(subject.getTodos(), emits(newTodos));

        verify(
          () => plugin.setString(
            LocalStorageTodosProvider.kTodosCollectionKey,
            json.encode(newTodos),
          ),
        ).called(1);
      });

      test(
        'throws TodoNotFoundException if todo '
        'with provided id is not found',
        () {
          final subject = createSubject();

          expect(
            () => subject.deleteTodo('non-existing-id'),
            throwsA(isA<TodoNotFoundException>()),
          );
        },
      );
    });

    group('clearCompleted', () {
      test('deletes all completed todos', () {
        final newTodos = todos.where((todo) => !todo.isCompleted).toList();
        final deletedTodosAmount = todos.length - newTodos.length;

        final subject = createSubject();

        expect(
          subject.clearCompleted(),
          completion(equals(deletedTodosAmount)),
        );
        expect(subject.getTodos(), emits(newTodos));

        verify(
          () => plugin.setString(
            LocalStorageTodosProvider.kTodosCollectionKey,
            json.encode(newTodos),
          ),
        ).called(1);
      });
    });

    group('completeAll', () {
      test('sets isCompleted on all todos to provided value', () {
        final newTodos =
            todos.map((todo) => todo.copyWith(isCompleted: true)).toList();
        final changedTodosAmount =
            todos.where((todo) => !todo.isCompleted).length;

        final subject = createSubject();

        expect(
          subject.completeAll(isCompleted: true),
          completion(equals(changedTodosAmount)),
        );
        expect(subject.getTodos(), emits(newTodos));

        verify(
          () => plugin.setString(
            LocalStorageTodosProvider.kTodosCollectionKey,
            json.encode(newTodos),
          ),
        ).called(1);
      });
    });
  });
}
