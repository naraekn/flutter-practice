
import 'package:flutter/material.dart';
import 'model/products_repository.dart';
import 'detail.dart';

class HomePage extends StatelessWidget {
  HomePage({Key key}):super(key:key);

  List<Card> _buildGridCards(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    if (products == null || products.isEmpty) {
      return const <Card>[];
    }

    return products.map((product) {
      return Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            AspectRatio(
              aspectRatio: 18 / 11,
              child: Hero(
                  tag: product.id,
                  child: Container(
                      child: Image.asset(
                        products[product.id].assetName,
                        fit: BoxFit.fitWidth,
                      )
                  )
              )
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      product.name,
                      style: theme.textTheme.title,
                      maxLines: 1,
                    ),
                    SizedBox(height: 5.0),
                    Text(
                          product.location,
                          style: theme.textTheme.subtitle,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                     ),
                    Flexible(
                      child: Container(
                        alignment: Alignment.bottomRight,
                        child: FlatButton(
                          child: Text('more'),
                          textColor: Colors.blueAccent,
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailPage(product: product)),
                            );
                          },
                        )
                      )
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }).toList();
  }

  Widget _buildDrawer(BuildContext context){
    return Drawer(
      child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        DrawerHeader(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children:<Widget>[
              Container(
                padding: EdgeInsets.all(18),
                child: Text(
                  'Pages',
                  style: TextStyle(
                    fontSize: 24.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ]
          ),
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
        ),
        ListTile(
          leading: Icon(Icons.home, color: Colors.blue),
          title: Text(
            'Home',
            style: TextStyle(
              color: Colors.blue
            ),
          ),
          onTap: () {Navigator.pushNamed(context, '/home');},
        ),
        ListTile(
          title: Text('Search'),
          leading: Icon(Icons.search, color: Colors.blue),
          onTap: () {Navigator.pushNamed(context, '/search');},
        ),
        ListTile(
          title: Text('Favorite Hotel'),
          leading: Icon(Icons.location_city, color: Colors.blue),
          onTap: () {Navigator.pushNamed(context, '/favorite');},
        ),
        ListTile(
          title: Text('Ranking'),
          leading: Icon(Icons.insert_chart, color: Colors.blue),
          onTap: () {Navigator.pushNamed(context, '/ranking');},
        ),
        ListTile(
          title: Text('My Page'),
          leading: Icon(Icons.person, color: Colors.blue),
          onTap: () {Navigator.pushNamed(context, '/mypage');},
        ),
        ],
      ),
    );
  }

  Widget _buildAppBar(BuildContext context){
    return AppBar(
      title: Text('Main'),
      actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.search,
            semanticLabel: 'search',
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/search');
          },
        ),
        IconButton(
          icon: Icon(
            Icons.tune,
            semanticLabel: 'filter',
          ),
          onPressed: () {
            print('Filter button');
          },
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      drawer: _buildDrawer(context),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return GridView.count(
            crossAxisCount: orientation == Orientation.portrait ? 2 : 3,
            padding: EdgeInsets.all(16.0),
            childAspectRatio: 8.0 / 9.0,
            children: _buildGridCards(context),
          );
        },
      ),
    );
  }
}
