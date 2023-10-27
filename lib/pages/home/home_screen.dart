import 'package:flutter/material.dart';
import 'package:test/core/responses/fake_store_api_mode.dart';
import 'package:test/core/services/fake_store_api.dart';
import 'package:test/shared/widgets/item_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<FakeStoreResponse> fakeStoreData = [];
  var isLoaded = false;

  @override
  void initState() {
    super.initState();
    getFakeStore();
  }

  getFakeStore() async {
    fakeStoreData = await FakeStoreApi().getData();

    if (fakeStoreData.isNotEmpty) {
      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Visibility(
        visible: isLoaded,
        replacement: const Center(
          child: CircularProgressIndicator(),
        ),
        child: Center(
          child: GridView.count(
            crossAxisCount: 2,
            children: fakeStoreData
                .map((item) => ItemCard(
                      item: item,
                    ))
                .toList(),
          ),
        ),
      ),
    );
  }
}
