import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:test/core/responses/fake_store_api_mode.dart';
import 'package:test/core/services/fake_store_api.dart';

final fakeStoreProvider =
    Provider<FakeStoreApiService>((ref) => FakeStoreApiService());

final fakeStoreDataProvider = FutureProvider<List<FakeStoreResponse>>((ref) {
  return ref.watch(fakeStoreProvider).getFakeStore();
});
