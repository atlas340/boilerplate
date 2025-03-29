class ApiConstants {
  // Base URLs
  static const baseUrl = "https://reqres.in";
  static const moviesBaseUrl =
      'https://dea91516-1da3-444b-ad94-c6d0c4dfab81.mock.pstmn.io/';

  // Authentication Endpoints
  static const loginEndpoint = "$baseUrl/api/login";
  static const registerEndpoint = "$baseUrl/api/register";

  // Movies Endpoints
  static const moviesListEndpoint = "${moviesBaseUrl}movies_list";
}
