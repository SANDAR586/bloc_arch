
import 'package:testing_arch/core/base/di.dart';
import 'package:testing_arch/features/second_b/data/datasources/api_client.dart';
import 'package:testing_arch/features/second_b/domain/second_dio_factory.dart';

Future<void> initSecondService()async {
  
  instance.registerLazySingleton<SecondDioFactory>(
    () => SecondDioFactory(instance()));
  
  final dio = instance<SecondDioFactory>().getDio();
  instance.registerLazySingleton(()=> ApiClient(dio));

}