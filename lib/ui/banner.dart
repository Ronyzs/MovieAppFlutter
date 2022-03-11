import 'package:flutter/material.dart';
import 'package:movie_app/Packages/movie_information.dart';
import 'package:movie_app/pages/detail_screen.dart';

class popularInkwell extends StatelessWidget {
  var index;

  popularInkwell({required this.index});

  @override
  Widget build(BuildContext context) {
    final movie_information info = popular_movies[index];
    return Row(
      children: [
        InkWell(
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetailScreen(detail: info))),
          child: Container(
            alignment: Alignment.center,
            height: 140,
            width: 104,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                info.imageAsset,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class mostWatchedInkwell extends StatelessWidget {
  var index;

  mostWatchedInkwell({required this.index});

  @override
  Widget build(BuildContext context) {
    final movie_information info = mostWatched_movies[index];
    return Row(
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DetailScreen(detail: info)));
          },
          child: Container(
            alignment: Alignment.center,
            height: 140,
            width: 104,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                info.imageAsset,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class favInkwell extends StatelessWidget {
  var index;

  favInkwell({required this.index});

  @override
  Widget build(BuildContext context) {
    final movie_information info = fav_movies[index];
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetailScreen(detail: info))),
          child: Container(
            alignment: Alignment.center,
            height: 140,
            width: 104,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                info.imageAsset,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
