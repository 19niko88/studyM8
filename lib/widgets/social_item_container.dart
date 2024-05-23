import 'package:flutter/material.dart';

///
class SocialItemContainer extends StatelessWidget {
  const SocialItemContainer({super.key, this.onPressed, required this.image, required this.title});

  final Function()? onPressed;
  final String image;
  final String title;
  /// SocialType(image, title) enum tipi
  ///
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onPressed,
      child: Container(

        constraints: const BoxConstraints(
            minHeight: 78.0, minWidth: 74.0),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: const Color(0Xff3D348B),
            borderRadius: BorderRadius.circular(8.0)),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(image),
              const SizedBox(height:6.0),
              Text(title,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w400)),
            ]
        ),


      ),
    );
  }
}
