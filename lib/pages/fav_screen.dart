import 'package:flutter/material.dart';

import 'package:movie_app/views/mobile_view.dart';
import 'package:movie_app/views/web_view.dart';

class FavScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (cxt, constrains) {
      if (constrains.maxWidth <= 700) {
        return FavMobileView();
      } else {
        return FavWebView(
          constrain: constrains.maxWidth,
        );
      }
    });
  }
}
