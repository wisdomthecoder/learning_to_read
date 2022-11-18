import 'package:flutter/material.dart';

import '../styles/textstyles.dart';

selectableText({required String text}) => SelectableText(
      text!,
      textAlign: TextAlign.justify,
      style: smallTextWithWidth,
    );
