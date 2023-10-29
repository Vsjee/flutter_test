import 'package:flutter/material.dart';
import 'package:test/core/responses/fake_store_api_mode.dart';

class ItemCard extends StatelessWidget {
  final FakeStoreResponse item;

  const ItemCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(item.image),
            fit: BoxFit.fitWidth,
            alignment: Alignment.topCenter,
          ),
        ),
        child: const Text("YOUR TEXT"),
      ),
    );
  }
}
