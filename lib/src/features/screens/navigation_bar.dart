import 'package:flutter/material.dart';
import 'package:flutter_app/src/features/provider/navigation_bar_provider.dart';
import 'package:flutter_app/src/features/screens/image_screen.dart';
import 'package:flutter_app/src/features/screens/text_screen.dart';
import 'package:flutter_app/src/features/screens/video_screen.dart';
import 'package:provider/provider.dart';

class NavigationBarWidget extends StatelessWidget {
  const NavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> body = [
      const TextScreen(),
      const VideoScreen(),
      const ImageScreen(),
    ];

    final navigationBarProvider = Provider.of<NavigationBarProvider>(context);

    return Scaffold(
      body: body[navigationBarProvider.selectedIndex.index],
      bottomNavigationBar: NavigationBar(
        indicatorShape: const CircleBorder(),
        indicatorColor: Colors.white,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.text_fields),
            label: 'Text',
          ),
          NavigationDestination(
            icon: Icon(Icons.video_collection_rounded),
            label: 'Video',
          ),
          NavigationDestination(
            icon: Icon(Icons.image),
            label: 'Image',
          ),
        ],
        selectedIndex: navigationBarProvider.selectedIndex.index,
        onDestinationSelected: (index) {
          navigationBarProvider.changeSelectedIndex(index);
        },
      ),
    );
  }
}
