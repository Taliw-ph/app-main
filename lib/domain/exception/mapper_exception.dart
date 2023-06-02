class MapperException<From, To> implements Exception {
  final String message;

  MapperException(this.message);

  @override
  String toString() => 'Error when mappong class $From to $To: $message';
}
