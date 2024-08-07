import 'package:flutter/material.dart';
import 'package:kanaknaturals_cursor/utilities/my_active_provider.dart';
import 'package:provider/provider.dart';

class MyText extends StatefulWidget {
  final int itemID;
  final String text;
  final TextStyle textStyle;
  final double width;
  final double underlineOffset;
  final bool hasDot;
  const MyText({
    super.key,
    required this.itemID,
    required this.text,
    required this.textStyle,
    required this.width,
    required this.underlineOffset,
    this.hasDot = false,
  });

  @override
  State<MyText> createState() => _MyTextState();
}

class _MyTextState extends State<MyText> with TickerProviderStateMixin {
  late AnimationController _colorAnimationController;
  late Animation _colorAnimation;
  late AnimationController _underlineAnimationController;
  late Animation _underlineAnimation;

  @override
  void initState() {
    _colorAnimationController = AnimationController(
      duration: const Duration(milliseconds: 250),
      vsync: this,
    )..addListener(() {
        setState(() {});
      });
    _colorAnimation = ColorTween(
      begin: Colors.black,
      end: Colors.orange,
    ).animate(_colorAnimationController);
    _underlineAnimationController = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    )..addListener(() {
        if (_underlineAnimationController.isCompleted &&
            _underlineAnimationController.value == 1) {
          _underlineAnimationController.reset();
        }
        setState(() {});
      });
    _underlineAnimation = Tween(begin: -widget.width, end: widget.width)
        .animate(_underlineAnimationController);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        _colorAnimationController.forward();
        _underlineAnimationController.animateTo(0.5);
        Provider.of<MyActiveProvider>(context, listen: false)
            .setActiveItem(widget.itemID);
      },
      onExit: (event) {
        _colorAnimationController.reverse();
        _underlineAnimationController.animateTo(1);
        Provider.of<MyActiveProvider>(context, listen: false)
            .setActiveItem(null);
      },
      cursor: SystemMouseCursors.click,
      child: ClipRRect(
        child: Container(
          alignment: Alignment.centerRight,
          width: widget.hasDot ? widget.width + 25 : widget.width,
          height: widget.underlineOffset + 2,
          // color: Colors.green,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              // Points (si il y en a un)
              if (widget.hasDot)
                const Positioned(
                  top: 9,
                  left: -26,
                  child: Icon(
                    Icons.circle,
                    color: Colors.black,
                    size: 10,
                  ),
                ),

              // Texte
              Stack(
                children: [
                  Text(
                    widget.text,
                    style: widget.textStyle.copyWith(
                      color: _colorAnimation.value,
                    ),
                  ),
                ],
              ),

              // Underline (onHover animation)
              Positioned(
                top: widget.underlineOffset,
                left: _underlineAnimation.value,
                child: Container(
                  width: widget.width,
                  height: 1,
                  color: Colors.orange,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
