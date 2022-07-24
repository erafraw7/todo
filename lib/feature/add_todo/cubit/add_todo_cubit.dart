import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../api/models/todo.dart';
import '../../../repository/todos_repository.dart';

part 'add_todo_cubit.freezed.dart';

@injectable
class AddTodoCubit extends Cubit<AddTodoState> {
  AddTodoCubit(this._todosRepository) : super(const AddTodoState.initial());

  final TodosRepository _todosRepository;

  Future<void> submit(Todo todo) async {
    try {
      emit(const AddTodoState.loading());
      await _todosRepository.saveTodo(todo);
      emit(const AddTodoState.success());
    } catch (e) {
      emit(const AddTodoState.failure());
    }
  }
}

@freezed
class AddTodoState with _$AddTodoState {
  const factory AddTodoState.initial() = AddTodoStateInitial;
  const factory AddTodoState.loading() = AddTodoStateLoading;
  const factory AddTodoState.success() = AddTodoStateSuccess;
  const factory AddTodoState.failure() = AddTodoStateFailed;
}
