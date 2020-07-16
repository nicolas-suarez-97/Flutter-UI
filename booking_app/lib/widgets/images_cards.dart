import 'package:flutter/material.dart';
import 'package:booking_app/models/places.dart';

import 'image_card.dart';

class ImagesCards extends StatefulWidget {
  @override
  _ImagesCardsState createState() => _ImagesCardsState();
}

class _ImagesCardsState extends State<ImagesCards> {
  List<Place> places = [
    Place(place: 'Austia', image: 'https://images.unsplash.com/photo-1573554394544-930a4cf6fc66?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=752&q=80', days: 7),
    Place(place: 'India', image: 'https://images.unsplash.com/photo-1572295727871-7638149ea3d7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60', days: 12),
    Place(place: 'Bali', image: 'https://images.unsplash.com/photo-1572219479068-8a05d5310ba1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80', days: 3),
    Place(place: 'Austia', image: 'https://images.unsplash.com/photo-1571030439710-121569126a76?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80', days: 7),
    Place(place: 'India', image: 'https://images.unsplash.com/photo-1569834381156-7b735e41e57d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=889&q=80', days: 12),
    Place(place: 'Bali', image: 'https://images.unsplash.com/photo-1573554394544-930a4cf6fc66?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=752&q=80', days: 3),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: places.length,
        itemBuilder: (_,index){
          return ImageCard(
            place: places[index],
            name: places[index].place,
            days: places[index].days,
            picture: places[index].image,
          );
        },
      ),
    );
  }
}