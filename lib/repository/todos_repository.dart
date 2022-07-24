import 'package:injectable/injectable.dart';

import '../api/models/todo.dart';
import '../provider/todos_provider.dart';

/// {@template todos_repository}
/// A repository that handles todo related requests.
/// {@endtemplate}
@singleton
class TodosRepository {
  /// {@macro todos_repository}
  const TodosRepository({
    required TodosProvider todosProvider,
  }) : _todosProvider = todosProvider;

  final TodosProvider _todosProvider;

  /// Provides a [Stream] of all todos.
  Stream<List<Todo>> getTodos() => _todosProvider.getTodos();

  /// Saves a [todo].
  ///
  /// If a [todo] with the same id already exists, it will be replaced.
  Future<void> saveTodo(Todo todo) => _todosProvider.saveTodo(todo);

  /// Deletes the todo with the given id.
  ///
  /// If no todo with the given id exists, a [TodoNotFoundException] error is
  /// thrown.
  Future<void> deleteTodo(String id) => _todosProvider.deleteTodo(id);

  /// Deletes all completed todos.
  ///
  /// Returns the number of deleted todos.
  Future<int> clearCompleted() => _todosProvider.clearCompleted();

  /// Sets the `isCompleted` state of all todos to the given value.
  ///
  /// Returns the number of updated todos.
  Future<int> completeAll({required bool isCompleted}) =>
      _todosProvider.completeAll(isCompleted: isCompleted);
}
