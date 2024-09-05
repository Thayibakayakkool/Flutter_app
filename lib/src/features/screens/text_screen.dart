import 'package:flutter/material.dart';
import 'package:flutter_app/src/features/widgets/share_button_widget.dart';
import 'package:share_plus/share_plus.dart';

class TextScreen extends StatelessWidget {
  const TextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Container(
          width: size.width * 0.9,
          height: size.height * 0.25,
          decoration: BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.black),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  ' “Happiness held is the seed ; \n  Happiness shared is the flower.”',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 15, top: 2),
                    child: Text(
                      '– John Harrigan',
                      style: TextStyle(
                        color: Colors.grey.shade800,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const Divider(
                  color: Colors.black,
                  endIndent: 15,
                  indent: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: ShareButtonWidget(
                    onPressed: () {
                      Share.share(
                          '“Happiness held is the seed ; \n  Happiness shared is the flower.”– John Harrigan');
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
