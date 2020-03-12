
import 'package:charts_flutter/flutter.dart';
import 'package:flutter/material.dart';
import 'model/products_repository.dart';

class RankingPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    List<Series> totalSeriesList = _createTotalData();
    List<Series> favoriteSeriesList = _createFavoriteData();

    return Scaffold(
      appBar: AppBar(
        title: Text('Ranking'),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: Text(
              'the total number of hotels',
              style: TextStyle(
                  fontWeight: FontWeight.w600
              )
            ),
          ),
          Container(
            height:200,
            width:200,
            margin: EdgeInsets.symmetric(vertical: 40.0, horizontal: 30.0),
            child: BarChart(
              totalSeriesList,
              animate: false,
            )
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: Text(
              'the number of favorite hotels',
              style: TextStyle(
                fontWeight: FontWeight.w600
              )
            ),
          ),
          Container(
            height: 200,
            width: 200,
            margin: EdgeInsets.symmetric(vertical: 40.0, horizontal: 30.0),
            child: BarChart(
              favoriteSeriesList,
              animate: false,
            )
          )
        ],
      )
    );
  }

  static List<Series<StarRatings, String>> _createTotalData(){
    final data = [
      StarRatings('1', products.where((p) => p.starRate == 1).toList().length),
      StarRatings('2', products.where((p) => p.starRate == 2).toList().length),
      StarRatings('3', products.where((p) => p.starRate == 3).toList().length),
      StarRatings('4', products.where((p) => p.starRate == 4).toList().length),
      StarRatings('5', products.where((p) => p.starRate == 5).toList().length),
    ];

    return [
      new Series<StarRatings, String>(
        id: 'Total',
        colorFn: (_, __) => MaterialPalette.blue.shadeDefault,
        domainFn: (StarRatings rating, _) => rating.star,
        measureFn: (StarRatings rating, _) => rating.count,
        data: data,
      )
    ];
  }

  static List<Series<StarRatings, String>> _createFavoriteData(){
    final data = [
      StarRatings('1', favoriteProducts.where((p) => p.starRate == 1).toList().length),
      StarRatings('2', favoriteProducts.where((p) => p.starRate == 2).toList().length),
      StarRatings('3', favoriteProducts.where((p) => p.starRate == 3).toList().length),
      StarRatings('4', favoriteProducts.where((p) => p.starRate == 4).toList().length),
      StarRatings('5', favoriteProducts.where((p) => p.starRate == 5).toList().length),
    ];

    return [
      new Series<StarRatings, String>(
        id: 'Favorite',
        colorFn: (_, __) => MaterialPalette.blue.shadeDefault,
        domainFn: (StarRatings rating, _) => rating.star,
        measureFn: (StarRatings rating, _) => rating.count,
        data: data,
      )
    ];
  }
}

class StarRatings {
  final String star;
  final int count;
  StarRatings(this.star, this.count);
}

