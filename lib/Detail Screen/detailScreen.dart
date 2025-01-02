import 'package:Tourify/Home%20Screen/Data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:gap/gap.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen>
    with SingleTickerProviderStateMixin {
  var selected = false;
  late final data = ModalRoute.of(context)!.settings.arguments as Destination;
  late final screenWidth = MediaQuery.of(context).size.width;
  late final screenHeight = MediaQuery.of(context).size.height;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(data.name),
        leading: const _BackButton(),
        centerTitle: true,
        actions: [
          _FavoriteButton(
            selected: selected,
            onToggle: () => setState(() => selected = !selected),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Hero(
                tag: "destination-tag-${data.name}",
                flightShuttleBuilder: (
                  BuildContext flightContext,
                  Animation<double> animation,
                  HeroFlightDirection flightDirection,
                  BuildContext fromHeroContext,
                  BuildContext toHeroContext,
                ) {
                  return Material(
                    color: Colors.transparent,
                    child: toHeroContext.widget,
                  );
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: CachedNetworkImage(
                    imageUrl: data.image,
                    width: screenWidth,
                    height: screenHeight * 0.25,
                    fit: BoxFit.cover,
                    fadeInDuration: const Duration(milliseconds: 200),
                    fadeOutDuration: const Duration(milliseconds: 200),
                    memCacheWidth: (screenWidth * 2).toInt(),
                    memCacheHeight: (screenHeight * 0.5).toInt(),
                    maxWidthDiskCache: 1600,
                    maxHeightDiskCache: 1200,
                    placeholder: (context, url) => Container(
                      color: Colors.grey[300],
                      width: screenWidth,
                      height: screenHeight * 0.25,
                    ),
                    errorWidget: (context, url, error) => Container(
                      color: Colors.grey[300],
                      width: screenWidth,
                      height: screenHeight * 0.25,
                      child: const Icon(Icons.error),
                    ),
                  ),
                ),
              ),
              const Gap(16),
              Text(
                "Description :",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const Gap(16),
              Text(
                data.description,
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Extracted widgets for better performance
class _BackButton extends StatelessWidget {
  const _BackButton();

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      child: const Icon(CupertinoIcons.chevron_left),
      onPressed: () => Navigator.pop(context),
    );
  }
}

class _FavoriteButton extends StatelessWidget {
  final bool selected;
  final VoidCallback onToggle;

  const _FavoriteButton({
    required this.selected,
    required this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      child: Icon(
        selected ? CupertinoIcons.heart_fill : CupertinoIcons.heart,
        color: selected ? Colors.red : Colors.grey,
      ),
      onPressed: onToggle,
    );
  }
}
