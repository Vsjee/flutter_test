import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test/core/providers/provider.dart';
import 'package:test/shared/widgets/item_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Consumer(builder: (context, ref, child) {
      final fakeStoreDataa = ref.watch(fakeStoreDataProvider);

      return fakeStoreDataa.when(
        data: (data) {
          return Center(
            child: GridView.count(
              crossAxisCount: 2,
              children: data
                  .map((item) => ItemCard(
                        item: item,
                      ))
                  .toList(),
            ),
          );
        },
        error: (err, s) => Text(err.toString()),
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
      );
    }));
  }
}
