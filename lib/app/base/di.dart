import 'package:get_it/get_it.dart';

final instance = GetIt.instance;


/*
 1️⃣ Factory - new instance every time it's requested
  instance.registerFactory<LoginBloc>(() => LoginBloc(instance()));

   2️⃣ Lazy Singleton - single instance created only when needed
  instance.registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl(instance()));

   3️⃣ Singleton - single instance created immeinstanceately at setup
  instance.registerSingleton<AppConfig>(AppConfig(baseUrl: "https:api.example.com"));

   4️⃣ Async Singleton - single instance after async init (e.g., SharedPreferences)
  instance.registerSingletonAsync<SharedPreferences>(() async {
    return await SharedPreferences.getInstance();
  });

   ⬇️ Call async singletons before app starts
  await instance.allReady();

  5️⃣ calling Instance
  final loginBloc = instance<LoginBloc>();
  
 */

Future<void> initDepedencyIndection() async {

// Register your dependencies here
 
  await instance.allReady();
  
}
