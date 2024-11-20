import 'package:book_app/constant.dart';
import 'package:book_app/features/search_view/search_view.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          logo,
          cacheHeight: 20,
        ),
        IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return SearchView();
                },
              ));
            },
            icon: const Icon(
              Icons.search,
              size: 40,
              color: Colors.white,
            ))
      ],
    );
  }
}
