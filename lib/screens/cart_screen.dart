import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/cart_provider.dart';
import '../models/product.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = context.watch<CartProvider>();

    double total = 0;
    for (var item in cart.items) {
      total += item.price;
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("السلة"),
      ),
      body: cart.items.isEmpty
          ? const Center(
        child: Text("السلة فارغة"),
      )
          : Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: cart.items.length,
              itemBuilder: (context, index) {
                final Product product = cart.items[index];

                return ListTile(
                  leading: Image.asset(product.image, width: 50),
                  title: Text(product.name),
                  subtitle: Text("${product.price} \$"),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () {
                      context
                          .read<CartProvider>()
                          .removeFromCart(product);
                    },
                  ),
                );
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Text(
                  "الإجمالي: $total \$",
                  style: const TextStyle(fontSize: 20),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("الدفع"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}