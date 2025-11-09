import 'package:flutter/material.dart';

class Loader extends StatelessWidget {
  final Widget child;
  final bool isLoading;

  const Loader({super.key, required this.child, required this.isLoading});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return SizedBox(
      width: size.width,
      height: size.height,
      child: Stack(children: [
        child,
        (isLoading)
            ? Positioned(
                child: Container(
                  width: size.width,
                  height: size.height,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.8),
                  ),
                  child: const Center(
                    child: CircularProgressIndicator(color: Colors.white),
                  ),
                ),
              )
            : const SizedBox(),
      ]),
    );
  }
}