import '../repositories/task_repository.dart';

class UpdateTaskStatus {
  final TaskRepository repository;

  UpdateTaskStatus(this.repository);

  Future<void> call(int id, bool isCompleted) async {
    return await repository.updateTaskStatus(id, isCompleted);
  }
}
