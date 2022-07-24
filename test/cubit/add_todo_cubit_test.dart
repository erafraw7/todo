import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:todo/api/models/todo.dart';
import 'package:todo/feature/add_todo/cubit/add_todo_cubit.dart';
import 'package:todo/repository/todos_repository.dart';

class MockTodosRepository extends Mock implements TodosRepository {}

class FakeTodo extends Fake implements Todo {}

void main() {
  group('AddTodoCubit', () {
    late TodosRepository todosRepository;

    setUpAll(() {
      registerFallbackValue(FakeTodo());
    });

    setUp(() {
      todosRepository = MockTodosRepository();
    });

    AddTodoCubit buildCubit() {
      return AddTodoCubit(todosRepository);
    }

    group('constructor', () {
      test('works properly', () {
        expect(buildCubit, returnsNormally);
      });

      test('has correct initial state', () {
        expect(
          buildCubit().state,
          equals(const AddTodoStateInitial()),
        );
      });
    });

    group('TodoSubmit', () {
      blocTest<AddTodoCubit, AddTodoState>(
        'attempts to save new todo to repository ',
        setUp: () {
          when(() => todosRepository.saveTodo(any())).thenAnswer((_) async {});
        },
        build: buildCubit,
        act: (cubit) => cubit.submit(Todo(title: 'title')),
        expect: () => const [
          AddTodoState.loading(),
          AddTodoState.success(),
        ],
        verify: (bloc) {
          verify(
            () => todosRepository.saveTodo(
              any(
                  that: isA<Todo>()
                      .having((t) => t.title, 'title', equals('title'))),
            ),
          ).called(1);
        },
      );

      blocTest<AddTodoCubit, AddTodoState>(
        'emits new state with error if save to repository fails',
        build: () {
          when(() => todosRepository.saveTodo(any()))
              .thenThrow(Exception('oops'));
          return buildCubit();
        },
        act: (cubit) => cubit.submit(Todo(title: 'title')),
        expect: () => const [
          AddTodoState.loading(),
          AddTodoState.failure(),
        ],
      );
    });
  });
}
