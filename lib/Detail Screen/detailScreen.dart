import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tourify/Home%20Screen/Data.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  var selected = false;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final data = ModalRoute.of(context)!.settings.arguments as Destination;
    return Scaffold(
      appBar: AppBar(
        title: Text(data.name),
        leading: CupertinoButton(
          padding: EdgeInsets.zero,
          child: Icon(CupertinoIcons.chevron_left),
          onPressed: () => Navigator.pop(context),
        ),
        centerTitle: true,
        actions: [
          CupertinoButton(
            padding: EdgeInsets.zero,
            child: Icon(
              selected ? CupertinoIcons.heart_fill : CupertinoIcons.heart,
              color: selected ? Colors.red : Colors.grey,
            ),
            onPressed: () => setState(() {
              selected = !selected;
            }),
          )
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Hero(
                tag: "destination-tag-${data.name}",
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: CachedNetworkImage(
                    key: UniqueKey(),
                    imageUrl: data.image,
                    width: screenWidth,
                    height: screenHeight * 0.25,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Gap(16),
              Text("Description :",
                  style: Theme.of(context).textTheme.headlineSmall),
              Gap(16),
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
