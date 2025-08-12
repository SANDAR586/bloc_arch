import 'package:testing_arch/core/base/di.dart';
import 'package:testing_arch/core/network/api_client.dart';
import 'package:testing_arch/core/network/api_repository.dart';
import 'package:testing_arch/features/first_c/domain/models/task.dart';
import 'package:testing_arch/features/second_b/data/models/user_model.dart';

class ApiRepositoryImpl  extends ApiRepository {
  final ApiClient _apiClient = instance<ApiClient>();
  @override
  Future<Task> getTask(String id) {
    // TODO: implement getTask
    throw UnimplementedError();
  }

  @override
  Future<List<UserModel>> getUsers() async {
    return await _apiClient.getTasks();
  }
}