import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:todo/api/models/todo.dart';
import 'package:todo/feature/todos/cubit/todos_cubit.dart';
import 'package:todo/repository/todos_repository.dart';

class MockTodosRepository extends Mock implements TodosRepository {}

class FakeTodo extends Fake implements Todo {}

void main() {
  final mockTodos = [
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

  group('TodosCubit', () {
    late TodosRepository todosRepository;

    setUpAll(() {
      registerFallbackValue(FakeTodo());
    });

    setUp(() {
      todosRepository = MockTodosRepository();
      when(
        () => todosRepository.getTodos(),
      ).thenAnswer((_) => Stream.value(mockTodos));
      when(() => todosRepository.saveTodo(any())).thenAnswer((_) async {});
    });

    TodosCubit buildCubit() {
      return TodosCubit(todosRepository);
    }

    group('constructor', () {
      test('works properly', () => expect(buildCubit, returnsNormally));

      test('has correct initial state', () {
        expect(
          buildCubit().state,
          equals(const TodosStateInitial()),
        );
      });
    });

    group('TodosRequest', () {
      blocTest<TodosCubit, TodosState>(
        'starts listening to repository getTodos stream',
        build: buildCubit,
        act: (cubit) => cubit.request(),
        verify: (_) {
          verify(() => todosRepository.getTodos()).called(1);
        },
      );

      blocTest<TodosCubit, TodosState>(
        'emits state with updated type all and todos '
        'when repository getTodos stream emits new todos',
        build: buildCubit,
        act: (cubit) => cubit.request(typeState: const TodosTypeStateAll()),
        expect: () => [
          const TodosState.loading(),
          TodosState.success(mockTodos, const TodosTypeStateAll())
        ],
      );

      blocTest<TodosCubit, TodosState>(
        'emits state with updated type incomplete and todos '
        'when repository getTodos stream emits new todos',
        build: buildCubit,
        act: (cubit) =>
            cubit.request(typeState: const TodosTypeStateInComplete()),
        expect: () => [
          const TodosState.loading(),
          TodosState.success(mockTodos, const TodosTypeStateInComplete())
        ],
      );

      blocTest<TodosCubit, TodosState>(
        'emits state with updated type complete and todos '
        'when repository getTodos stream emits new todos',
        build: buildCubit,
        act: (cubit) =>
            cubit.request(typeState: const TodosTypeStateComplete()),
        expect: () => [
          const TodosState.loading(),
          TodosState.success(mockTodos, const TodosTypeStateComplete())
        ],
      );

      blocTest<TodosCubit, TodosState>(
        'emits state with failure status '
        'when repository getTodos stream emits error',
        setUp: () {
          when(
            () => todosRepository.getTodos(),
          ).thenAnswer((_) => Stream.error(Exception('oops')));
        },
        build: buildCubit,
        act: (cubit) => cubit.request(),
        expect: () => [
          const TodosState.loading(),
          const TodosState.failure(),
        ],
      );
    });

    group('TodosToggle', () {
      blocTest<TodosCubit, TodosState>(
        'saves todo with isCompleted set to event isCompleted flag',
        build: buildCubit,
        act: (cubit) => cubit.toggle(mockTodos.first, true),
        verify: (_) {
          verify(
            () => todosRepository.saveTodo(
              mockTodos.first.copyWith(isCompleted: true),
            ),
          ).called(1);
        },
      );
    });

    group('TodosDelete', () {
      blocTest<TodosCubit, TodosState>(
        'deletes todo using repository',
        setUp: () {
          when(
            () => todosRepository.deleteTodo(any()),
          ).thenAnswer((_) async {});
        },
        build: buildCubit,
        act: (cubit) => cubit.delete(mockTodos.first),
        verify: (_) {
          verify(
            () => todosRepository.deleteTodo(mockTodos.first.id),
          ).called(1);
        },
      );
    });
  });
}
