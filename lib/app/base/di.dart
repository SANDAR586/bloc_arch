import 'package:get_it/get_it.dart';

final di = GetIt.instance;


/*
 1️⃣ Factory - new instance every time it's requested
  di.registerFactory<LoginBloc>(() => LoginBloc(di()));

   2️⃣ Lazy Singleton - single instance created only when needed
  di.registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl(di()));

   3️⃣ Singleton - single instance created immediately at setup
  di.registerSingleton<AppConfig>(AppConfig(baseUrl: "https:api.example.com"));

   4️⃣ Async Singleton - single instance after async init (e.g., SharedPreferences)
  di.registerSingletonAsync<SharedPreferences>(() async {
    return await SharedPreferences.getInstance();
  });

   ⬇️ Call async singletons before app starts
  await di.allReady();

  5️⃣ calling Instance
  final loginBloc = di<LoginBloc>();
  
 */

Future<void> initDepedencyIndection() async {

  // Register your dependencies here
  // Example:
  // di.registerFactory<LoginBloc>(() => LoginBloc(di()));
  // di.registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl(di()));
  // di.registerSingleton<AppConfig>(AppConfig(baseUrl: "https://api.example.com"));
  
  // If you have async initializations, use registerSingletonAsync
  // await di.registerSingletonAsync<SharedPreferences>(() async {
  //   return await SharedPreferences.getInstance();
  // });
  
  // Ensure all async singletons are ready before app starts
  await di.allReady();
  
}
