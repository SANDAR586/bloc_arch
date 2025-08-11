import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class BaseDioFactory {
  static const String headerKeyContentType = "content-type";
  static const String headerApplicationJson = "application/json";
  static const String headerKeyAuthorization = "authorization";
  static const String headerKeyLanguage = "language";

  final String _baseUrl;

  BaseDioFactory(this._baseUrl);

  Dio getDio(){
    var timeout=const Duration(seconds: 30);
    var dio = Dio(
      BaseOptions(
        baseUrl: _baseUrl,
        connectTimeout: timeout,
        receiveTimeout: timeout,
        sendTimeout: timeout,
      ),
    );
    dio.interceptors.add(AuthInterceptor());
    dio.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
      ),
    );
   return dio;
  }
} 


class AuthInterceptor extends Interceptor {
  //final AppPreferences _preferences;

  AuthInterceptor();

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers[BaseDioFactory.headerKeyAuthorization] ="Bearer your_auth_token_here";
  
    super.onRequest(options, handler);
  }
}