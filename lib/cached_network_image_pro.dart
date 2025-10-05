import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CachedNetworkImageWidget extends StatelessWidget {
  final String imgUrl;
  final double width, height;
  final Widget? errorWidget;
  final Widget? placeholder;
  final BoxFit? boxfit;
  const CachedNetworkImageWidget({
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
          Image.asset(
            "assets/no image.jpg",
            height: height,
            width: width,
            fit: boxfit ?? BoxFit.cover,
          ),

      fadeInDuration: const Duration(milliseconds: 500),
      fit: boxfit ?? BoxFit.cover,
    );
  }
}
