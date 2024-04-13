import 'package:flutter/cupertino.dart';
import 'package:tuned_read/constant.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.child,  this.color,  this.padding});
  final Widget child;
  final Color? color;
  final EdgeInsetsGeometry? padding;


  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration:   const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8),),
        //color: color??cardBackgroundColor,
        color: cardBackgroundColor,

      ),
      child: Padding(
        padding: padding??const EdgeInsets.all(12),
        child: child,
      ),
    );
  }
}
