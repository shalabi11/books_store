// import 'package:book_app/constant.dart';
import 'package:book_app/constant.dart';
import 'package:book_app/core/styles.dart';
import 'package:book_app/features/home/presentation/view/home_view/widet/category_home.dart';
import 'package:book_app/features/home/presentation/view/home_view/widet/category_list_view.dart';
import 'package:book_app/features/home/presentation/view/home_view/widet/custom_app_bar.dart';
import 'package:book_app/features/home/presentation/view/home_view/widet/list_view_horizonatl.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: CustomAppBar(),
      ),
      body: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),
          // SliverToBoxAdapter(child: CustomAppBar()),
          SliverToBoxAdapter(child: ListViewHz()),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(top: 50, bottom: 15, left: 20),
              child: Text(
                'Best Seller',
                style: Styles.textStyle18,
              ),
            ),
          ),
          Expanded(child: CategoryListView()),
        ],
      ),
    );
  }
}
