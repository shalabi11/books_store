import 'package:book_app/core/styles.dart';
import 'package:flutter/material.dart';

class TitleCategory extends StatelessWidget {
  const TitleCategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Harry Potter\nand the Goblet of Fire',
            style: Styles.textStyle20,
            // maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            'j.k.Rowling',
            style: Styles.textStyle14,
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '19.99 \$',
                style: Styles.textStyle18,
              ),
              // SizedBox(
              //   width: 100,
              // ),
              Spacer(
                flex: 1,
              ),
              RatingWidget()
            ],
          ),
        ],
      ),
    );
  }
}

class RatingWidget extends StatelessWidget {
  const RatingWidget(
      {super.key, this.mainAxisAlignment = MainAxisAlignment.start});
  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: const [
        Icon(
          Icons.star,
          color: Colors.yellow,
          size: 20,
        ),
        SizedBox(
          width: 6,
        ),
        Text(
          '4.8 ',
          style: Styles.textStyle16,
        ),
        Opacity(
          opacity: .7,
          child: Text(
            '(2390)',
            style: Styles.textStyle14,
          ),
        ),
      ],
    );
  }
}

class ImageCategory extends StatelessWidget {
  const ImageCategory({
    super.key,
    required this.height,
    required this.width,
  });
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.red,
            image: const DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/images/test_image.png')),
          )),
    );
  }
}
