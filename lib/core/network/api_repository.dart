

import 'package:testing_arch/features/first_c/domain/models/task.dart';
import 'package:testing_arch/features/second_b/data/models/user_model.dart';

abstract class ApiRepository {
  Future<Task> getTask(String id);
  Future<List<UserModel>> getUsers();
}