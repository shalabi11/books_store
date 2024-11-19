import 'package:book_app/features/home/presentation/view/home_view/widet/category_home.dart';
import 'package:flutter/material.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return const CategoryHome();
        },
      ),
    );
  }
}
