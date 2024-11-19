// import 'package:book_app/features/home/presentation/view/home_view.dart';
import 'package:book_app/features/home/presentation/view/home_view/widet/image_horizontal.dart';
import 'package:flutter/material.dart';

class ListViewHz extends StatelessWidget {
  const ListViewHz({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const ImageHorizontal();
        },
      ),
    );
  }
}
