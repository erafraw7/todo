import 'package:test/test.dart';
import 'package:todo/provider/todos_provider.dart';

class TestTodosProvider extends TodosProvider {
  TestTodosProvider() : super();

  @override
  dynamic noSuchMethod(Invocation invocation) {
    return super.noSuchMethod(invocation);
  }
}

void main() {
  group('TodosProvider', () {
    test('can be constructed', () {
      expect(TestTodosProvider.new, returnsNormally);
    });
  });
}
