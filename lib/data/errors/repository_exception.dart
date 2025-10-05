class RepositoryException implements Exception {
  RepositoryException(this.message, {this.cause});

  final String message;
  final Object? cause;

  @override
  String toString() {
    final buffer = StringBuffer('RepositoryException: $message');
    if (cause != null) {
      buffer.write(' (cause: $cause)');
    }
    return buffer.toString();
  }
}
