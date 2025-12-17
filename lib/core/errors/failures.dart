import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  Failure(this.errorMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errorMessage);

  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout with ApiServer');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout with ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive timeout with ApiServer');
      case DioExceptionType.badCertificate:
        return ServerFailure('Bad certificate received');
      case DioExceptionType.badResponse:
        if (dioError.response != null &&
            dioError.response!.statusCode != null) {
          return ServerFailure.fromResponse(
            dioError.response!.statusCode!,
            dioError.response!.data,
          );
        }
        return ServerFailure('Bad response received from server');
      case DioExceptionType.cancel:
        return ServerFailure('Request to API server was cancelled');
      case DioExceptionType.connectionError:
        return ServerFailure('Connection to API server failed');
      case DioExceptionType.unknown:
        if (dioError.message!.contains('SocketException')) {
          return ServerFailure('No Internet Connection');
        }
        return ServerFailure('Unexpexted Error , try again later');
      default:
        return ServerFailure('UnKnow Error message');
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic respose) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(respose['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your request not found');
    } else if (statusCode == 500) {
      return ServerFailure('Internal Server error, Please try again later');
    } else {
      return ServerFailure('oops there was an error please try again');
    }
  }
}
