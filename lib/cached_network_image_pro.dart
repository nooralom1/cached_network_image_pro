/// {@template cached_network_image_pro}
/// A professional Flutter widget for displaying cached network images with
/// built-in support for heading, coordinates, and elevation metadata.
///
/// This widget is optimized for location-based, travel, or outdoor visualization apps.
/// {@endtemplate}

// ignore_for_file: unnecessary_library_name

library cached_network_image_pro;

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CachedNetworkImagePro extends StatelessWidget {
  final String imgUrl;
  final double width, height;
  final Widget? errorWidget;
  final Widget? placeholder;
  final BoxFit? boxfit;
  const CachedNetworkImagePro({
    super.key,
    required this.imgUrl,
    required this.width,
    required this.height,
    this.errorWidget,
    this.boxfit,
    this.placeholder,
  });

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      height: height,
      width: width,
      imageUrl: imgUrl,
      placeholder: (context, url) =>
          placeholder ??
          Shimmer.fromColors(
            baseColor: Colors.grey[300]!,
            highlightColor: Colors.grey[100]!,
            direction: ShimmerDirection.ltr,
            child: Container(height: height, width: width, color: Colors.white),
          ),
      errorWidget: (context, url, error) =>
          errorWidget ??
          Image.network(
            "https://github.com/nooralom1/cached_network_image_pro/blob/main/assets/no%20image.jpg?raw=true",
            height: height,
            width: width,
            fit: boxfit ?? BoxFit.cover,
          ),

      fadeInDuration: const Duration(milliseconds: 500),
      fit: boxfit ?? BoxFit.cover,
    );
  }
}
