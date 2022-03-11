import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:movie_app/pages/fav_screen.dart';

import '../Packages/const.dart';
import '../Packages/movie_information.dart';
import '../pages/home_screen.dart';
import '../ui/banner.dart';

class MobileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/main-bg.png'), fit: BoxFit.fill)),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 32, top: 32, right: 32),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'What would you',
                        style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                            letterSpacing: 1),
                      ),
                      Container(child: SizedBox())
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 32, top: 4, right: 32),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'like to watch?',
                        style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                            letterSpacing: 1),
                      ),
                      Container(
                        child: CircleAvatar(
                          radius: 16,
                          backgroundColor: Colors.white.withOpacity(0.2),
                          child: IconButton(
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FavScreen())),
                            icon: Icon(Icons.favorite_border),
                            color: Colors.white,
                            iconSize: 18,
                            padding: EdgeInsets.symmetric(
                                horizontal: 2, vertical: 2),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Divider(
                  height: 16,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: defPadding),
                        padding: EdgeInsets.symmetric(horizontal: defPadding),
                        height: 38,
                        decoration: BoxDecoration(
                            color: textColor.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(50)),
                        child: Row(
                          children: [
                            Expanded(
                              child: Center(
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: 'Search',
                                      hintStyle: TextStyle(
                                          color: textColor,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w300),
                                      enabledBorder: InputBorder.none,
                                      focusedBorder: InputBorder.none),
                                  style:
                                      TextStyle(color: textColor, fontSize: 12),
                                ),
                              ),
                            ),
                            Icon(
                              Icons.search,
                              color: Colors.white,
                              size: 20,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ), // Search Bar
                Divider(
                  height: 32,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 32, right: 32),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Popular Movies',
                        style: TextStyle(
                            fontSize: 14,
                            letterSpacing: 1,
                            color: textColor,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w300),
                      ),
                      SizedBox()
                    ],
                  ),
                ),
                PopularList(),
                Padding(
                  padding: const EdgeInsets.only(left: 32, right: 32, top: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Most Watched',
                        style: TextStyle(
                            fontSize: 14,
                            letterSpacing: 1,
                            color: textColor,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w300),
                      ),
                      SizedBox()
                    ],
                  ),
                ),
                MostWatchedList(),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

class FavMobileView extends StatelessWidget {
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
                    image: AssetImage('images/main-bg.png'), fit: BoxFit.fill)),
          ), //Background
          Container(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
              child: Container(),
            ),
          ), //Blur
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(),
                    Padding(
                      padding: const EdgeInsets.all(defPadding),
                      child: CircleAvatar(
                        radius: 14,
                        backgroundColor: Colors.white.withOpacity(0.3),
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
                    ), // Back buton
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: Text(
                        'Your Favorite',
                        style: TextStyle(
                            fontSize: 38,
                            color: textColor,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Poppins'),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    FavList()
                  ],
                )
              ],
            ),
          )
        ])),
      ),
    );
  }
}

class FavList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: SizedBox(
        height: 560,
        width: double.infinity,
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 10 / 12,
          ),
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
            return favInkwell(index: index);
          },
          itemCount: fav_movies.length,
        ),
      ),
    );
  }
}
