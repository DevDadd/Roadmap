import 'package:flutter/material.dart';

class AnimatedWidgetDemo extends StatefulWidget {
  const AnimatedWidgetDemo({super.key});

  @override
  State<AnimatedWidgetDemo> createState() => _AnimatedWidgetDemoState();
}

class _AnimatedWidgetDemoState extends State<AnimatedWidgetDemo>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  late Animation<double> _opacityAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );

    _scaleAnimation = Tween<double>(begin: 0.5, end: 1.5).animate(_controller);
    _opacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);

    _controller.repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ScaleFadeLogo(
        scaleAnimation: _scaleAnimation,
        opacityAnimation: _opacityAnimation,
      ),
    );
  }
}

class ScaleFadeLogo extends AnimatedWidget {
  final Animation<double> scaleAnimation;
  final Animation<double> opacityAnimation;

  const ScaleFadeLogo({
    super.key,
    required this.scaleAnimation,
    required this.opacityAnimation,
  }) : super(listenable: scaleAnimation);

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: opacityAnimation.value,
      child: Transform.scale(
        scale: scaleAnimation.value,
        child: FlutterLogo(size: 100),
      ),
    );
  }
}
