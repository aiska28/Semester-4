import 'package:flutter/material.dart';
import '../models/item.dart';

class ItemPage extends StatelessWidget {
  final Item item;

  const ItemPage({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(item.name)),

      body: Column(
        children: [
          Hero(
            tag: item.name,
            child: Image.asset(item.image, height: 200),
          ),
          Text(item.name),
          Text("Rp ${item.price}"),
          Text("Stock: ${item.stock}"),
          Text("⭐ ${item.rating}"),
        ],
      ),
    );
  }
}