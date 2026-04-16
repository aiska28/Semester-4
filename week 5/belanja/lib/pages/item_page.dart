import 'package:flutter/material.dart';
import '../models/item.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Item itemArgs =
        ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(
        title: Text(itemArgs.name),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Hero(
                tag: itemArgs.name,
                child: Image.asset(
                  itemArgs.image,
                  height: 200,
                ),
              ),
            ),

            const SizedBox(height: 20),

            Text(
              itemArgs.name,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            Text("Price: Rp ${itemArgs.price}"),
            Text("Stock: ${itemArgs.stock}"),
            Text("Rating: ⭐ ${itemArgs.rating}"),
          ],
        ),
      ),
    );
  }
}