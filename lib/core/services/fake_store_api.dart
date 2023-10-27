import 'package:http/http.dart' as http;
import 'package:test/core/responses/fake_store_api_mode.dart';

class FakeStoreApi {
  Future<List<FakeStoreResponse>> getData() async {
    var url = Uri.parse('https://fakestoreapi.com/products');

    var response = await http.get(url);

    if (response.statusCode == 200) {
      return fakeStoreResponseFromJson(response.body);
    } else {
      return fakeStoreResponseFromJson(response.body);
    }
  }
}
