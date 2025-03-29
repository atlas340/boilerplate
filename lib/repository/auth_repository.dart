import 'package:mvvm_app/data/network/network_api_services.dart';
import 'package:mvvm_app/res/constants/api_constants.dart';

class AuthRepository {
  final NetworkApiServices _network = NetworkApiServices();
  Future<dynamic> apiLogin(dynamic data) async {
    try {
      // final response = await _network.getPostApiResponse(ApiConstants.loginEndPoint, data);
      await Future.delayed(Duration.zero);
      final response = {"token": "some-token-value"};
      return response;
    } catch (e) {
      rethrow; //Big Brain
    }
  }

  Future<dynamic> signUp(dynamic data) async {
    try {
      // final response = await _network.getPostApiResponse(ApiConstants.registerEndPoint, data);
      final response = await Future.delayed(Duration.zero);

      return response;
    } catch (e) {
      rethrow; //Big Brain
    }
  }
}

// ! Testing Purposes

// void main(List<String> args) async {
//   AuthRepository auth = AuthRepository();
//   final data = await auth.apiLogin();
//   print(data["data"][1]["year"]);
// }
