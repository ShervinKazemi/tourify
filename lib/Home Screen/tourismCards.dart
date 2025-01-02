import 'package:Tourify/Detail%20Screen/detailScreen.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:gap/gap.dart';
import 'Data.dart';

class TourismCards extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;

  const TourismCards({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
        cacheExtent: screenHeight,
        addAutomaticKeepAlives: true,
        addRepaintBoundaries: true,
        separatorBuilder: (context, index) => const Gap(16),
        itemCount: fakeData.length,
        itemBuilder: (context, index) {
          final item = fakeData[index];
          return _TourismCard(
            item: item,
            screenHeight: screenHeight,
          );
        },
      ),
    );
  }
}

class _TourismCard extends StatelessWidget {
  final Destination item;
  final double screenHeight;

  const _TourismCard({
    required this.item,
    required this.screenHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      shadowColor: Colors.black45,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => DetailScreen(),
              settings: RouteSettings(arguments: item),
            ),
          );
        },
        borderRadius: BorderRadius.circular(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _CardImage(
              item: item,
              screenHeight: screenHeight,
            ),
            _CardContent(item: item),
          ],
        ),
      ),
    );
  }
}

class _CardImage extends StatelessWidget {
  final Destination item;
  final double screenHeight;

  const _CardImage({
    required this.item,
    required this.screenHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Hero(
          tag: "destination-tag-${item.name}",
          child: ClipRRect(
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(16),
            ),
            child: CachedNetworkImage(
              imageUrl: item.image,
              height: screenHeight * 0.25,
              width: double.infinity,
              fit: BoxFit.cover,
              memCacheWidth: 800,
              memCacheHeight: 400,
              maxWidthDiskCache: 1600,
              maxHeightDiskCache: 1200,
              placeholder: (context, url) => Container(
                color: Colors.grey[300],
                height: screenHeight * 0.25,
              ),
              errorWidget: (context, url, error) => Container(
                color: Colors.grey[300],
                height: screenHeight * 0.25,
                child: const Icon(Icons.error),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.black.withOpacity(0.7),
                  Colors.transparent,
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
            height: 80,
          ),
        ),
      ],
    );
  }
}

class _CardContent extends StatelessWidget {
  final Destination item;

  const _CardContent({
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.name,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const Gap(8),
                Text(
                  item.description,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          const Gap(16),
          const Icon(Icons.arrow_forward_ios, size: 20),
        ],
      ),
    );
  }
}
