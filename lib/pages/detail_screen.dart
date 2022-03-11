import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:movie_app/Packages/const.dart';
import 'package:movie_app/Packages/movie_information.dart';
import 'package:movie_app/ui/fav_btn.dart';
import 'package:movie_app/ui/rate_btn.dart';

class DetailScreen extends StatelessWidget {
  final movie_information detail;

  DetailScreen({required this.detail});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (cxt, constrains) {
      if (constrains.maxWidth <= 550) {
        return MobileViewDetail(detail: detail);
      } else {
        return PageViewDetail(detail: detail);
      }
    });
  }
}

class MobileViewDetail extends StatelessWidget {
  final movie_information detail;
  MobileViewDetail({required this.detail});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Stack(children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/main-bg.png'),
                      fit: BoxFit.fill)),
            ),
            Container(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                child: Container(),
              ),
            ),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Stack(children: [
                    Center(
                      child: ShaderMask(
                        shaderCallback: (rectangle) {
                          return LinearGradient(
                                  colors: [Colors.white, Colors.transparent],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter)
                              .createShader(Rect.fromLTRB(
                                  0, 0, rectangle.width, rectangle.height));
                        },
                        blendMode: BlendMode.dstIn,
                        child: Image.asset(
                          detail.imageAsset,
                          fit: BoxFit.fitWidth,
                          width: double.maxFinite,
                          height: 400,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(defPadding),
                      child: CircleAvatar(
                        radius: 14,
                        backgroundColor: Colors.black.withOpacity(0.3),
                        child: IconButton(
                          onPressed: (() {
                            Navigator.pop(context);
                          }),
                          icon: Center(
                            child: Icon(
                              Icons.arrow_back_ios,
                              size: 14,
                            ),
                          ),
                          color: Colors.white,
                        ),
                      ),
                    )
                  ]), // Movie Picture
                  Container(
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(4)),
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  child: Icon(
                                    Icons.movie_outlined,
                                    color: Colors.white,
                                  ),
                                  decoration:
                                      BoxDecoration(color: Colors.black),
                                ),
                                Flexible(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Genre',
                                        style: TextStyle(fontSize: 10),
                                      ),
                                      SizedBox(
                                        height: 2,
                                      ),
                                      Flexible(
                                        child: Text(
                                          detail.genre,
                                          style: TextStyle(
                                              fontSize: 10, color: textColor),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ), // Genre
                        Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(4)),
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  child: Icon(
                                    Icons.access_time_outlined,
                                    color: Colors.white,
                                  ),
                                  decoration:
                                      BoxDecoration(color: Colors.black),
                                ),
                                Flexible(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Duration',
                                        style: TextStyle(fontSize: 10),
                                      ),
                                      SizedBox(
                                        height: 2,
                                      ),
                                      Flexible(
                                        child: Text(
                                          detail.duration,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontSize: 10, color: textColor),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ), // Durasi
                        Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(4)),
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.white,
                                  ),
                                  decoration:
                                      BoxDecoration(color: Colors.black),
                                ),
                                Flexible(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Rating',
                                        style: TextStyle(fontSize: 10),
                                      ),
                                      SizedBox(
                                        height: 2,
                                      ),
                                      Flexible(
                                        child: Text(
                                          detail.rating,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontSize: 10, color: textColor),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ), //Genre, Duration, Rating
                  Container(
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        thumbUp(),
                        SizedBox(
                          width: 16,
                        ),
                        thumbDown(),
                        SizedBox(
                          width: 16,
                        ),
                        favoriteBtn()
                      ],
                    ),
                  ), // Rate and Favorite
                  Padding(
                    padding: const EdgeInsets.only(left: 32, right: 32, top: 8),
                    child: Text(
                      detail.title,
                      style: TextStyle(
                          fontSize: 32,
                          color: textColor,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8, left: 32, right: 32),
                    child: Text(
                      'Synopsis',
                      style: TextStyle(
                          fontSize: 14,
                          color: textColor,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8, left: 32, right: 32),
                    child: Text(
                      detail.synopsis,
                      style: TextStyle(
                          fontSize: 12,
                          color: textColor,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w300),
                      textAlign: TextAlign.justify,
                    ),
                  )
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}

class PageViewDetail extends StatelessWidget {
  final movie_information detail;
  PageViewDetail({required this.detail});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Stack(children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/main-bg.png'),
                      fit: BoxFit.fill)),
            ),
            Container(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                child: Container(),
              ),
            ),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Stack(children: [
                    Center(
                      child: ShaderMask(
                        shaderCallback: (rectangle) {
                          return LinearGradient(
                                  colors: [Colors.white, Colors.transparent],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter)
                              .createShader(Rect.fromLTRB(
                                  0, 0, rectangle.width, rectangle.height));
                        },
                        blendMode: BlendMode.dstIn,
                        child: Image.asset(
                          detail.imageAsset,
                          fit: BoxFit.fitWidth,
                          width: double.maxFinite,
                          height: 400,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(defPadding),
                      child: CircleAvatar(
                        radius: 14,
                        backgroundColor: Colors.black.withOpacity(0.3),
                        child: IconButton(
                          onPressed: (() {
                            Navigator.pop(context);
                          }),
                          icon: Center(
                            child: Icon(
                              Icons.arrow_back_ios,
                              size: 14,
                            ),
                          ),
                          color: Colors.white,
                        ),
                      ),
                    )
                  ]), // Movie Picture
                  Container(
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 40,
                          width: 120,
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(4)),
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  child: Icon(
                                    Icons.movie_outlined,
                                    color: Colors.white,
                                    size: 32,
                                  ),
                                  decoration:
                                      BoxDecoration(color: Colors.black),
                                ),
                                Flexible(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Genre',
                                        style: TextStyle(fontSize: 14),
                                      ),
                                      SizedBox(
                                        height: 2,
                                      ),
                                      Flexible(
                                        child: Text(
                                          detail.genre,
                                          style: TextStyle(
                                              fontSize: 14, color: textColor),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ), // Genre
                        Container(
                          height: 40,
                          width: 120,
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(4)),
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  child: Icon(
                                    Icons.access_time_outlined,
                                    color: Colors.white,
                                    size: 32,
                                  ),
                                  decoration:
                                      BoxDecoration(color: Colors.black),
                                ),
                                Flexible(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Duration',
                                        style: TextStyle(fontSize: 14),
                                      ),
                                      SizedBox(
                                        height: 2,
                                      ),
                                      Flexible(
                                        child: Text(
                                          detail.duration,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontSize: 14, color: textColor),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ), // Durasi
                        Container(
                          height: 40,
                          width: 120,
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(4)),
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.white,
                                    size: 32,
                                  ),
                                  decoration:
                                      BoxDecoration(color: Colors.black),
                                ),
                                Flexible(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Rating',
                                        style: TextStyle(fontSize: 14),
                                      ),
                                      SizedBox(
                                        height: 2,
                                      ),
                                      Flexible(
                                        child: Text(
                                          detail.rating,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontSize: 14, color: textColor),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ), //Genre, Duration, Rating
                  Container(
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        thumbUp(),
                        SizedBox(
                          width: 16,
                        ),
                        thumbDown(),
                        SizedBox(
                          width: 16,
                        ),
                        favoriteBtn()
                      ],
                    ),
                  ), // Rate and Favorite
                  Padding(
                    padding: const EdgeInsets.only(left: 32, right: 32, top: 8),
                    child: Text(
                      detail.title,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 42,
                          color: textColor,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8, left: 32, right: 32),
                    child: Text(
                      'Synopsis',
                      style: TextStyle(
                          fontSize: 22,
                          color: textColor,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8, left: 32, right: 32),
                    child: Text(
                      detail.synopsis,
                      style: TextStyle(
                          fontSize: 16,
                          color: textColor,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w300),
                      textAlign: TextAlign.justify,
                    ),
                  )
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
