import 'package:flutter/material.dart';

class ImageHorizontal extends StatelessWidget {
  const ImageHorizontal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(

            // height: 40,
            decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.red,
          image: const DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('assets/images/test_image.png')),
        )),
      ),
    );
  }
}
