import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class SpecialItem extends StatelessWidget {
  final String image;
  final num rating;

  const SpecialItem({
    super.key,
    required this.image,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.green[50],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Icon(Icons.star, color: Colors.orange, size: 16),
              const SizedBox(width: 4),
              Text(
                rating.toString(),
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Hero(
            tag: image,
            child: CachedNetworkImage(imageUrl: image, height: 100),
          ),
        ],
      ),
    );
  }
}
