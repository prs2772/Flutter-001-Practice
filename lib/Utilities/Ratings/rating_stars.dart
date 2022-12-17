import 'package:flutter/material.dart';

import 'star.dart';

class RatingStar extends StatelessWidget{
  //Variables
  List<Star> stars = List.filled(1, Star(StarStatus.empty));

  //Builders
  RatingStar(this.stars, {super.key});

  //Rating
  @override
  Widget build(BuildContext context){

    final childrenStars = <Star>[];
    
    for (var element in stars) {
      childrenStars.add(element);
    }

    final rating = Row(
      children: childrenStars,
    );

    return rating;
  }
}
