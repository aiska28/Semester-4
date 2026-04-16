import 'package:flutter/material.dart';
import '../models/item.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Item> items = [
    Item(
      name: 'Sugar',
      price: 5000,
      image: 'assets/sugar.png',
      stock: 10,
      rating: 4.5,
    ),
    Item(
      name: 'Salt',
      price: 2000,
      image: 'assets/salt.png',
      stock: 15,
      rating: 4.0,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping List'),
      ),

      // 🔥 GRID VIEW (pengganti ListView)
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: GridView.builder(
          itemCount: items.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.70,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            final item = items[index];

            return InkWell(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/item',
                  arguments: item,
                );
              },

              child: Card(
                elevation: 3,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      
                      // 🔥 IMAGE
                      Expanded(
                        child: Center(
                          child: Hero(
                            tag: item.name,
                            child: Image.asset(item.image),
                          ),
                        ),
                      ),

                      const SizedBox(height: 8),

                      // NAME
                      Text(
                        item.name,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      // PRICE
                      Text("Rp ${item.price}"),

                      // RATING
                      Text("⭐ ${item.rating}"),

                      // STOCK
                      Text("Stock: ${item.stock}"),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}