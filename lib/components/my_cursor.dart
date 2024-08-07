import 'package:flutter/material.dart';
import 'package:kanaknaturals_cursor/utilities/my_active_provider.dart';
import 'package:kanaknaturals_cursor/utilities/my_passive_provider.dart';
import 'package:provider/provider.dart';

class MyCursor extends StatefulWidget {
  const MyCursor({super.key});

  @override
  State<MyCursor> createState() => _MyCursorState();
}

class _MyCursorState extends State<MyCursor> {
  @override
  Widget build(BuildContext context) {
    return Consumer2<MyActiveProvider, MyPassiveProvider>(
      builder: (context, activeProvider, passiveProvider, _) {
        return AnimatedPositioned(
          duration: const Duration(milliseconds: 125),
          top: activeProvider.activeItem == null
              ? activeProvider.cursorPos == null
                  ? 0
                  : activeProvider.cursorPos!.dy - 5
              : passiveProvider.offsetList[activeProvider.activeItem!].dy,
          left: activeProvider.activeItem == null
              ? activeProvider.cursorPos == null
                  ? 0
                  : activeProvider.cursorPos!.dx - 5
              : passiveProvider.offsetList[activeProvider.activeItem!].dx,
          child: AnimatedOpacity(
            duration: const Duration(milliseconds: 250),
            opacity: activeProvider.cursorPos == null ? 0 : 1,
            child: const MouseRegion(
              opaque: false,
              child: Icon(
                Icons.circle,
                color: Colors.orange,
                size: 11,
              ),
            ),
          ),
        );
      },
    );
  }
}
