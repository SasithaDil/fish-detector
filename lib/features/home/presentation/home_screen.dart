import 'package:fish_detector/core/assets.dart';
import 'package:fish_detector/core/media_queries.dart';
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
          GestureDetector(
            onTap: () {
              picker.pickImage(source: ImageSource.camera);
            },
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                height: context.mQHeight * 0.1,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: const Center(
                  child: Text(
                    "Detect fish",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
