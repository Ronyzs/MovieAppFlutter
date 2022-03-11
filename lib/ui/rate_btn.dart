import 'package:flutter/material.dart';

bool thumbU = false;
bool thumbD = false;

class thumbUp extends StatefulWidget {
  @override
  State<thumbUp> createState() => _thumbUpState();
}

class _thumbUpState extends State<thumbUp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CircleAvatar(
        radius: 16,
        backgroundColor: Colors.white.withOpacity(0.5),
        child: IconButton(
          onPressed: () {
            setState(() {
              if (thumbD == true) {
                null;
              } else {
                thumbU = !thumbU;
              }
            });
          },
          icon: Icon(
            thumbU ? Icons.thumb_up : Icons.thumb_up_outlined,
            color: Colors.white,
            size: 16,
          ),
        ),
      ),
    );
  }
}

class thumbDown extends StatefulWidget {
  @override
  State<thumbDown> createState() => _thumbDownState();
}

class _thumbDownState extends State<thumbDown> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CircleAvatar(
        radius: 16,
        backgroundColor: Colors.white.withOpacity(0.5),
        child: IconButton(
          onPressed: () {
            setState(() {
              if (thumbU == true) {
                null;
              } else {
                thumbD = !thumbD;
              }
            });
          },
          icon: Icon(
            thumbD ? Icons.thumb_down : Icons.thumb_down_outlined,
            color: Colors.white,
            size: 16,
          ),
        ),
      ),
    );
  }
}
