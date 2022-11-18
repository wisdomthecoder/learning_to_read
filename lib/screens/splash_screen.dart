import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learning_to_read/styles/textstyles.dart';
import 'package:learning_to_read/widget/progressindicator.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Learning to Read Using Rhyming Word',
            style: largeTextBold,
            textAlign: TextAlign.center,
          ),
          defaultProgress(context),
          Text(
            'Dashon Educational Apps',
            textAlign: TextAlign.center,
            style: smallTextBold,
          ),
        ],
      ),
    );
  }
}
