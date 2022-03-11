import 'package:flutter/material.dart';

class favoriteBtn extends StatefulWidget {
  @override
  State<favoriteBtn> createState() => _favoriteBtnState();
}

class _favoriteBtnState extends State<favoriteBtn> {
  bool fav = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CircleAvatar(
        radius: 16,
        backgroundColor: Colors.white.withOpacity(0.5),
        child: IconButton(
          onPressed: () {
            setState(() {
              fav = !fav;
            });
          },
          icon: Icon(
            fav ? Icons.favorite : Icons.favorite_border,
            color: Colors.white,
            size: 16,
          ),
        ),
      ),
    );
  }
}
