import 'package:dio/dio.dart';

class TreeService {
  static final Dio _dio = Dio(BaseOptions(baseUrl: "https://localhost:8000"));

  static Future<Tree> getTree() async {
    final response = await _dio.get('/gettree');
    return Tree.fromJson(response.data);
  }
}