import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:kanaknaturals_cursor/components/my_cursor.dart';
import 'package:kanaknaturals_cursor/components/my_page_body.dart';
import 'package:kanaknaturals_cursor/utilities/my_active_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MouseRegion(
        onHover: (event) {
          Provider.of<MyActiveProvider>(context, listen: false)
              .setCursorPos(event.position);
        },
        child: Stack(
          children: [
            // Background
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/background.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            // Flou
            BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 3,
                sigmaY: 3,
              ),
              child: Container(),
            ),

            // Page
            const MyPageBody(),

            // Cursor
            const MyCursor(),
          ],
        ),
      ),
    );
  }
}
