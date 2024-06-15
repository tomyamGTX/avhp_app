import 'package:flutter/material.dart';

class buildHeader extends StatelessWidget {
  const buildHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 48),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Row(
          children: [
            CircleAvatar(
              radius: 32,
              child: FlutterLogo(),
            )
          ],
        ),
      ),
    );
  }
}
