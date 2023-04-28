import 'package:flutter/material.dart';
import 'package:qr_code/constants/colors.dart';
import 'package:qr_flutter/qr_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          QrImage(
            data: "1234567890",
            version: QrVersions.auto,
            size: 200.0,
          ),
          Container(
            height: 40,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: AppColors.greyClr,
            ),
            child: TextFormField(
              decoration: const InputDecoration(
                  hintText: "Type the Data", border: InputBorder.none),
            ),
          ),
          Container(
            height: 50,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: AppColors.greenClr,
            ),
            child: const Text("Generate QR Code"),
          ),
        ],
      ),
    );
  }
}
