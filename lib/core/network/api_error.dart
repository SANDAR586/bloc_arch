
import 'package:dio/dio.dart';
import 'package:testing_arch/core/network/error_handler.dart';

class ApiError {
  ErrorCode code;
  String? message;

  ApiError(this.code, {this.message});

  factory ApiError.empty() => ApiError(ErrorCode.UNKNOWN);
}

class ApiErrorHandler extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    throw ErrorHandler.handle(err.response?.data["message"]).apiError;
  }
}