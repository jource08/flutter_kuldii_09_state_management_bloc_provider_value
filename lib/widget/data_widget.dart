import 'package:flutter/material.dart';

import 'center_widget.dart';

class DataWidget extends StatelessWidget {
  const DataWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      height: 100,
      width: 200,
      child: const CenterWidget(),
    );
  }
}
