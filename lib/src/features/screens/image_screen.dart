import 'package:flutter/material.dart';
import 'package:flutter_app/src/features/widgets/share_button_widget.dart';
import 'package:share_plus/share_plus.dart';

class ImageScreen extends StatelessWidget {
  const ImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: size.width * 0.9,
              height: size.height * 0.24,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
              child: Image.asset('assets/images/flower.webp',
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: ShareButtonWidget(
                onPressed: () {
                  Share.share(
                      'https://uk.blastingnews.com/buzz/2019/03/5-destinations-to-see-beautiful-flowers-around-the-world-002864417.html');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
