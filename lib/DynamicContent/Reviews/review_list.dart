import 'package:flutter/material.dart';
import 'package:paris_trips/DynamicContent/Reviews/review.dart';

class ReviewList extends StatelessWidget{
  //Variables
  List<Review> reviews = List.filled(1, Review('assets/images/beach-001.jpg','Paris RS', "Relaxing and comfortable"," DOT NET"));

  //Builders
  ReviewList({super.key});

  //Rating
  @override
  Widget build(BuildContext context){

    final childrenRevs = <Review>[];

    for (var element in reviews) {
      childrenRevs.add(element);
    }

    final rating = Row(
      children: childrenRevs,
    );

    return rating;
  }
}

