import 'package:book_app/core/styles.dart';
import 'package:book_app/features/home/presentation/view/home_view/widet/category_home.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 25, bottom: 10),
            child: CustomTextFieldForSearchView(),
          ),
          SizedBox(
            height: 10,
          ),

          // padding: EdgeInsets.only(top: 50, bottom: 15, left: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Search Result',
              style: Styles.textStyle18,
            ),
          ),

          Expanded(
              child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
            child: ListResultForSearchView(),
          )),
        ],
      ),
    );
  }
}

class CustomTextFieldForSearchView extends StatelessWidget {
  const CustomTextFieldForSearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'Search',
          suffixIcon: Opacity(
            opacity: .5,
            child: Icon(
              Icons.search,
              size: 40,
              color: Colors.white,
            ),
          )),
    );
  }
}

class ListResultForSearchView extends StatelessWidget {
  const ListResultForSearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return const CategoryHome();
    });
  }
}
