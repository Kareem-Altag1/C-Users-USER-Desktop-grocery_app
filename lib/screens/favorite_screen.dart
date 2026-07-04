import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/favorite_provider.dart';
import '../models/product.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final fav = context.watch<FavoriteProvider>();

    return Scaffold(
      appBar: AppBar(
        title: const Text("المفضلة"),
      ),
      body: fav.favorites.isEmpty
          ? const Center(child: Text("لا يوجد عناصر"))
          : ListView.builder(
        itemCount: fav.favorites.length,
        itemBuilder: (context, index) {
          final Product product = fav.favorites[index];

          return ListTile(
            leading: Image.asset(product.image, width: 50),
            title: Text(product.name),
            subtitle: Text("${product.price} \$"),
            trailing: IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () {
                context
                    .read<FavoriteProvider>()
                    .toggleFavorite(product);
              },
            ),
          );
        },
      ),
    );
  }
}