import 'package:book_app/constant.dart';
import 'package:book_app/features/home/presentation/view/home_view/home_view.dart';
// import 'package:book_app/main.dart';
import 'package:flutter/material.dart';
import 'package:splash_view/source/presentation/pages/splash_view.dart';
import 'package:splash_view/source/presentation/widgets/done.dart';

class SplashViewbody extends StatelessWidget {
  const SplashViewbody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SplashView(
      showStatusBar: true,
      // subtitle: const Text('جاري تحميل البيانات'),
      // title: const Text(
      //   'wait ...',
      //   style: TextStyle(fontSize: 20),
      // ),
      duration: const Duration(seconds: 2),
      logo: Image.asset(
        logo,
        // color: Colors.black,
      ),
      loadingIndicator: const Padding(
        padding: EdgeInsets.all(15.0),
        child: CircularProgressIndicator(),
      ),
      done: Done(const HomeView()),
    );
  }
}
