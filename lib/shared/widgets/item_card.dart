import 'package:flutter/material.dart';
import 'package:test/core/responses/fake_store_api_mode.dart';

class ItemCard extends StatelessWidget {
  FakeStoreResponse item;

  ItemCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Image.network(item.image);
  }
}
