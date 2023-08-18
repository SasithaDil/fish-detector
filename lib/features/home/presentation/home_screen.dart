import 'package:fish_detector/core/assets.dart';
import 'package:fish_detector/core/media_queries.dart';
import 'package:fish_detector/features/home/presentation/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final ImagePicker picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(fish),
          SizedBox(
            height: context.mQHeight * 0.2,
          ),
          CustomButton(
            picker: picker,
            onTap: () => picker.pickImage(source: ImageSource.camera),
            text: "Capture fish",
          ),
          CustomButton(
            picker: picker,
            onTap: () => picker.pickImage(source: ImageSource.gallery),
            text: "Upload fish",
          ),
        ],
      ),
    );
  }
}

