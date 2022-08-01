import 'package:dio/dio.dart';

class ApiHelper {

  final _getAllOps = BaseOptions(
      baseUrl: 'https://agrichapp.herokuapp.com',
      connectTimeout: 3000,
      receiveTimeout: 3000,
      method: 'GET');

  final _getPremiumOps = BaseOptions(
      baseUrl: 'https://agrichapp.herokuapp.com',
      connectTimeout: 3000,
      receiveTimeout: 3000,
      method: 'GET',
      queryParameters: {'isPremium': 'true'});

  Future<List<dynamic>?> getAll() async {
    try {
      var response = await Dio(_getAllOps).get('/members');
      if (response.statusCode == 200) {
        return response.data;
      } else {
        return null;
      }
    } catch (e) {
      print(e);
    }
  }

  Future<List<dynamic>?> getPremium() async {
    try {
      var response = await Dio(_getPremiumOps).get('/members');
      if (response.statusCode == 200) {
        return response.data;
      } else {
        return null;
      }
    } catch (e) {
      print(e);
    }
  }
}
