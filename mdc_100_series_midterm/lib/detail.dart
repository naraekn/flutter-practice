
import 'package:flutter/material.dart';
import 'model/product.dart';
import 'model/products_repository.dart';

class DetailPage extends StatelessWidget {
  final Product product;
  final VoidCallback onTap;
  DetailPage({Key key, this.product, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: EdgeInsets.symmetric(horizontal: 32, vertical: 20),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical:10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: List.generate(product.starRate, (index){
                      return Icon(Icons.star, color: Colors.yellow);
                    })
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    product.name,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.location_on, color: Colors.blue),
                    Expanded(
                      child: Text(
                        product.location,
                        style: TextStyle(
                            color: Colors.grey[500],
                            fontSize: 13
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.phone, color: Colors.blue),
                    Expanded(
                      child: Text(
                        product.phoneNum,
                        style: TextStyle(
                           color: Colors.grey[500],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          //FavoriteWidget(),
        ],
      ),
    );

    Widget textSection = Container(
      padding: EdgeInsets.symmetric(horizontal: 32, vertical: 3),
      child: Text(
        product.description,
        softWrap: true,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Detail'),
      ),
      body: ListView(
        children: [
          Stack(
            children: <Widget>[
              Hero(
                tag: product.id,
                  child: Container(
                    child: Image.asset(
                      product.assetName,
                      width: 600,
                      height: 300,
                      fit: BoxFit.cover,
                    ),
                  )
              ),
              Align(
                alignment: Alignment.topRight,
                child: FavoriteWidget(product: product)
              ),
            ]
          ),
          titleSection,
          Divider(color: Colors.grey),
          textSection,
        ],
      ),
    );
  }
}

class FavoriteWidget extends StatefulWidget {
  final Product product;
  FavoriteWidget({Key key, this.product}) : super(key: key);

  @override
  _FavoriteWidgetState createState() => _FavoriteWidgetState(product: product);
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  final Product product;

  _FavoriteWidgetState({Key key, this.product});

  @override
  Widget build(BuildContext context) {
    final bool alreadySaved = favoriteProducts.contains(product);

    return Container(
      padding: EdgeInsets.all(0),
      child: IconButton(
        icon: (alreadySaved ? Icon(Icons.favorite) : Icon(Icons.favorite_border)),
        color: Colors.red[500],
        onPressed: (){
          return setState(() {
            if (alreadySaved) {
              favoriteProducts.remove(product);
            } else {
              favoriteProducts.add(product);
            }
          });
        },
      ),
    );
  }
}

