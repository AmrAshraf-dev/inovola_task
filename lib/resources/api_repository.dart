
import '../models/myModel.dart';
import 'api_provider.dart';

class ApiRepository {
  final _provider = ApiProvider();

  Future<MyModel> fetchdata() {
    return _provider.fetchdata();
  }
}

class NetworkError extends Error {}