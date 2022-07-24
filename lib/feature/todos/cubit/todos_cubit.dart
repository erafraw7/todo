import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../api/models/todo.dart';
import '../../../repository/todos_repository.dart';

part 'todos_cubit.freezed.dart';

@injectable
class TodosCubit extends Cubit<TodosState> {
  TodosCubit(this._todosRepository) : super(const TodosState.initial());

  final TodosRepository _todosRepository;

  Future<void> request(
      {TodosTypeState typeState = const TodosTypeStateAll()}) async {
    emit(const TodosState.loading());
    _todosRepository.getTodos().listen((todos) {
      emit(TodosState.success(todos, typeState));
    }, onError: (error) {
      emit(const TodosStateFailed());
    });
  }

  Future<void> toggle(Todo todo, bool isCompleted) async {
    final newTodo = todo.copyWith(isCompleted: isCompleted);
    await _todosRepository.saveTodo(newTodo);
  }

  Future<void> delete(Todo todo) async {
    await _todosRepository.deleteTodo(todo.id);
  }
}

@freezed
class TodosState with _$TodosState {
  const factory TodosState.initial() = TodosStateInitial;
  const factory TodosState.loading() = TodosStateLoading;
  const factory TodosState.success(List<Todo> todos, TodosTypeState type) =
      TodosStateSuccess;
  const factory TodosState.failure() = TodosStateFailed;
}

@freezed
class TodosTypeState with _$TodosTypeState {
  const factory TodosTypeState.all() = TodosTypeStateAll;
  const factory TodosTypeState.incomplete() = TodosTypeStateInComplete;
  const factory TodosTypeState.complete() = TodosTypeStateComplete;
}
