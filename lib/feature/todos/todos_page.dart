import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../injection/injection.dart';
import 'cubit/todos_cubit.dart';
import 'widgets/todo_list_tile.dart';

class TodosPage extends StatelessWidget {
  const TodosPage({Key? key, required this.typeState}) : super(key: key);
  final TodosTypeState typeState;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<TodosCubit>()..request(typeState: typeState),
      child: const TodosView(),
    );
  }
}

class TodosView extends StatefulWidget {
  const TodosView({Key? key}) : super(key: key);

  @override
  State<TodosView> createState() => _TodosViewState();
}

class _TodosViewState extends State<TodosView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Todo List"),
      ),
      body: MultiBlocListener(
        listeners: [
          BlocListener<TodosCubit, TodosState>(
            listenWhen: (previous, current) => previous != current,
            bloc: context.read<TodosCubit>(),
            listener: (context, state) {
              if (state is TodosStateFailed) {
                ScaffoldMessenger.of(context)
                  ..hideCurrentSnackBar()
                  ..showSnackBar(
                    const SnackBar(
                      content: Text("Error"),
                    ),
                  );
              }
            },
          ),
        ],
        child: BlocBuilder<TodosCubit, TodosState>(
          bloc: context.read<TodosCubit>(),
          builder: (context, state) {
            return state.maybeWhen(success: (todosOrigin, type) {
              final todos = type.when(
                  all: () => todosOrigin,
                  incomplete: () => todosOrigin
                      .where((element) => !element.isCompleted)
                      .toList(),
                  complete: () => todosOrigin
                      .where((element) => element.isCompleted)
                      .toList());
              if (todos.isEmpty) {
                return Center(
                  child: Text(
                    "Empty",
                    style: Theme.of(context).textTheme.caption,
                  ),
                );
              }
              return CupertinoScrollbar(
                child: ListView(
                  children: [
                    for (final todo in todos)
                      TodoListTile(
                        todo: todo,
                        onToggleCompleted: (isCompleted) {
                          context.read<TodosCubit>().toggle(
                                todo,
                                isCompleted,
                              );
                        },
                        onDismissed: (_) {
                          context.read<TodosCubit>().delete(todo);
                        },
                      ),
                  ],
                ),
              );
            }, loading: () {
              return const Center(child: CupertinoActivityIndicator());
            }, orElse: () {
              return Center(
                  child: Text(
                "",
                style: Theme.of(context).textTheme.caption,
              ));
            });
          },
        ),
      ),
    );
  }
}
