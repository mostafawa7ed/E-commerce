import 'package:flutter/material.dart';

class CutomAuthBodyText extends StatelessWidget {
  final String body;
  const CutomAuthBodyText({
    super.key,
    required this.body,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25),
      child: Text(
        body,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.bodySmall,
      ),
    );
  }
}
