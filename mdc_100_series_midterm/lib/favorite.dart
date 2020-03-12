import 'package:flutter/material.dart';
import 'model/products_repository.dart';

class FavoritePage extends StatefulWidget {
  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite Hotels'),
      ),
      body: ListView.builder(
        itemCount: favoriteProducts.length,
        itemBuilder: (BuildContext context, int i){
          final product = favoriteProducts[i];
          return Dismissible(
            key: Key(product.name),
            onDismissed: (direction){
              setState(() {
                favoriteProducts.removeAt(i);
              });
            },
            background: Container(color: Colors.red),
            child: ListTile(title: Text(favoriteProducts[i].name)),
          );
        }
      )
    );
  }
}
