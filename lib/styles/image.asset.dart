import 'package:flutter/material.dart';

imageAsset(String assetDir, String fileName) => Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: ColorFiltered(
          colorFilter: ColorFilter.mode(
            Colors.grey,
            BlendMode.saturation,
          ),
          child: Image.asset(
            assetDir + fileName,
            colorBlendMode: BlendMode.saturation,
          ),
        ),
      ),
    );
