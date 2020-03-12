import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'model/products_repository.dart';

class MyPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Page')
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 40, horizontal: 30),
        child: favoriteProducts.isEmpty?
        Text("Nothing"):
        CarouselSlider(
          height: 200.0,
          aspectRatio: 16/9,
          viewportFraction: 0.8,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 2),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          pauseAutoPlayOnTouch: Duration(seconds: 6),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          items: favoriteProducts.map((p) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  child: Stack(
                    children: <Widget>[
                      Container(
                        child: Image.asset(
                          p.assetName,
                          width: 600,
                          height: 300,
                          fit: BoxFit.cover
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(20),
                        child: Text(
                          p.name,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                          )
                        )
                      )
                    ],
                  )
                );
              },
            );
          }).toList(),
        ),
      )
    );
  }
}
