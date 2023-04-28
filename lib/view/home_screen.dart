import 'package:flutter/material.dart';
import 'package:qr_code/constants/colors.dart';
import 'package:qr_flutter/qr_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String data = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            QrImage(
              data: data,
              version: QrVersions.auto,
              size: 200.0,
              backgroundColor: Colors.white,
            ),
            const SizedBox(
              height: 15,
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
                onChanged: (value) {
                  setState(() {
                    data = value;
                  });
                },
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 40,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColors.greenClr,
              ),
              child: const Center(child: Text("Generate QR Code")),
            ),
          ],
        ),
      ),
    );
  }
}
