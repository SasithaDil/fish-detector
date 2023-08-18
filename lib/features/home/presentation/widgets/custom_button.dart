import 'package:fish_detector/core/media_queries.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.picker,
    required this.onTap,
    required this.text,
  });

  final ImagePicker picker;
  final VoidCallback onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          height: context.mQHeight * 0.1,
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Center(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
