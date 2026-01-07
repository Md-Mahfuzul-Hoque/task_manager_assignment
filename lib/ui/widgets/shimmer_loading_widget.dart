import 'package:flutter/material.dart';
import 'package:task_management/UI/widgets/content_placeholder.dart';
import 'package:task_management/ui/widgets/title_placeholder.dart';
import 'banner_placeholder.dar.dart';

class ShimmerLoadingWidget extends StatelessWidget {
  const ShimmerLoadingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        baseColor: Colors.grey.shade300,
        highlightColor: Colors.grey.shade100,
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            BannerPlaceholder(),
            TitlePlaceholder(width: double.infinity),
            SizedBox(height: 16.0),
            ContentPlaceholder(
              lineType: ContentLineType.threeLines,
            ),
            SizedBox(height: 16.0),
            TitlePlaceholder(width: 200.0),
            SizedBox(height: 16.0),
            ContentPlaceholder(
              lineType: ContentLineType.twoLines,
            ),
            SizedBox(height: 16.0),
            TitlePlaceholder(width: 200.0),
            SizedBox(height: 16.0),
            ContentPlaceholder(
              lineType: ContentLineType.twoLines,
            ),
          ],
        ));
  }
}