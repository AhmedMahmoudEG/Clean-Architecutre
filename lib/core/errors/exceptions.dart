class ServerException implements Exception {
  ServerException({required this.message, required this.statusCode});
  final String message;
  int statusCode;
}
