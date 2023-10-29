import 'package:http/http.dart' as http;
import 'package:test/core/responses/fake_store_api_mode.dart';

class FakeStoreApiService {
  Future<List<FakeStoreResponse>> getFakeStore() async {
    var url = Uri.parse('https://fakestoreapi.com/products');

    var response = await http.get(url);

    if (response.statusCode == 200) {
      return fakeStoreResponseFromJson(response.body);
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}
