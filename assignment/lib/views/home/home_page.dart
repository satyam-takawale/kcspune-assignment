import 'package:assignment/providers/providers.dart';
import 'package:assignment/theme/app_theme.dart';
import 'package:assignment/views/home/local_widgets/colored_box.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('KCS Assignment'),
      ),
      body: Center(child: Consumer<ColorProvider>(
        builder: (context, colorProvider, child) {
          return ColorChangingBox(
            boxColor: AppColors.colors[colorProvider.colorIndex],
            onTap: colorProvider.toggleColor,
          );
        },
      )),
    );
  }
}
