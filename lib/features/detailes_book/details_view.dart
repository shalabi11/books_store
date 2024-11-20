import 'package:book_app/core/styles.dart';
import 'package:book_app/features/home/presentation/view/home_view/widet/action_button_details.dart';
import 'package:book_app/features/home/presentation/view/home_view/widet/item_detailes.dart';
import 'package:book_app/features/home/presentation/view/home_view/widet/list_view_horizonatl.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details Book'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.card_travel),
          ),
        ],
      ),
      body: StreamBuilder<Object>(
          stream: null,
          builder: (context, snapshot) {
            return Column(
              // // mainAxisSize: MainAxisSize.min,
              // crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const ImageCategory(height: 215, width: 150),
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  'The Jungle Book',
                  style: Styles.textStyle30,
                ),
                Opacity(
                  opacity: .7,
                  child: Text(
                    'Rudyard kipling',
                    style: Styles.textStyle18.copyWith(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                const RatingWidget(
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
                const BookDetailsButton(),
                const Text(
                  'You can also like ',
                  style: Styles.textStyle18,
                ),
                const Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 25),
                    child: SizedBox(height: 100, child: ListViewHz()),
                  ),
                ),
              ],
            );
          }),
    );
  }
}

class BookDetailsButton extends StatelessWidget {
  const BookDetailsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 28, right: 15, top: 10, bottom: 10),
      child: Row(
        children: [
          // const SizedBox(
          //   width: 24,
          // ),
          GestureDetector(
            child: const ActionButton(
              text: '19.99\$',
              left: Radius.circular(20),
            ),
          ),
          GestureDetector(
            child: const ActionButton(
              right: Radius.circular(20),
              color: Colors.orange,
              text: 'Free',
            ),
          ),
        ],
      ),
    );
  }
}
