import 'package:dio/dio.dart';

class ApiService {
  final Dio dio = Dio();

  static const String apiKey = String.fromEnvironment('API_KEY');

  Future<Response> getTopHeadlines() async {
    final response = await dio.get(
      'https://newsapi.org/v2/top-headlines',
      queryParameters: {
        'apiKey': apiKey,
        'country': 'us',
      },
    );

    return response;
  }

  Future<Response> getSearchData({
    required String query,
  }) async {
    final response = await dio.get(
      'https://newsapi.org/v2/everything',
      queryParameters: {
        'q': query,
        'apiKey': apiKey,
      },
    );

    return response;
  }
}
