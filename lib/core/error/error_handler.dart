// ignore_for_file: constant_identifier_names

import 'package:dio/dio.dart';
import 'package:testing_arch/core/error/api_error.dart';


class ApiErrorHandler extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    throw ErrorHandler.handle(err).apiError;
  }
}

class ErrorHandler implements Exception {
  late ApiError apiError;

  ErrorHandler.handle(dynamic error) {
    if (error is DioException) {
      apiError = _handleError(error);
    } else if (error == "User not found") {
      throw "User not found";
    } else {
      apiError = ApiError.empty();
    }
  }

  ApiError _handleError(DioException error) {
    final ErrorCode errorCode;
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.connectionError:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        errorCode = ErrorCode.CONNECTION_ERROR;
        break;
      case DioExceptionType.badResponse:
        
        errorCode = ErrorCode.UNKNOWN;
        break;
      case DioExceptionType.cancel:
      case DioExceptionType.unknown:
      case DioExceptionType.badCertificate:
        errorCode = ErrorCode.UNKNOWN;
        break;
    }

    return ApiError(errorCode);
  }
}

enum ErrorCode {
  // server errors
  ALREADY_REGISTER,
  INCORRECT_CREDENTIALS,
  UNAUTHORIZED,
  FORBIDDEN,

  // local errors
  CONNECTION_ERROR,
  WEAK_PASSWORD,
  UNKNOWN,
}
