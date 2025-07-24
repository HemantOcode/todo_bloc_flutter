import '../entities/task.dart';
import '../repositories/task_repository.dart';

class SearchTittle {
  final TaskRepository repository;

  SearchTittle(this.repository);

  Future<List<Task>> call(String query) async {
    return await repository.searchTasks(query);
  }
}
