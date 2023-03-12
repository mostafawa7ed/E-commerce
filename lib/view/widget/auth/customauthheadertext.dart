import 'package:flutter/material.dart';

class CutomAuthHeaderText extends StatelessWidget {
  final String header;
  const CutomAuthHeaderText({
    super.key,
    required this.header,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: Text(
        header,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.displayLarge,
      ),
    );
  }
}
