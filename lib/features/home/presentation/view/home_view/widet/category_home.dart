import 'package:book_app/constant.dart';
import 'package:book_app/core/styles.dart';
import 'package:book_app/core/utiles/app_router.dart';
import 'package:book_app/features/detailes_book/details_view.dart';
import 'package:book_app/features/home/presentation/view/home_view/widet/image_horizontal.dart';
import 'package:book_app/features/home/presentation/view/home_view/widet/item_detailes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class CategoryHome extends StatelessWidget {
  const CategoryHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const DetailsView(),
          ));
          // GoRouter.of(context).push(AppRouter.detailsView);
        },
        child: const Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ImageCategory(
              height: 150,
              width: 100,
            ),
            TitleCategory(),
          ],
        ),
      ),
    );
  }
}
