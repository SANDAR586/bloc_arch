import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';
import 'package:testing_arch/features/first_c/domain/models/task.dart';
import 'package:testing_arch/features/second_b/data/models/user_model.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: 'https://jsonplaceholder.typicode.com/')
abstract class ApiClient {
  factory ApiClient(Dio dio, {String? baseUrl}) = _ApiClient;

  @GET('/tasks/{id}')
  Future<Task> getTask(@Path("id") String id);

  @GET('users')
  Future<List<UserModel>> getTasks();


}
