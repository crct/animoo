// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:dpad_container/dpad_container.dart';

class DpadContainerWidget extends StatefulWidget {
  const DpadContainerWidget({
    Key? key,
    this.width,
    this.height,
    this.child,
  }) : super(key: key);

  final double? width;
  final double? height;
  final Widget? child;
  @override
  _DpadContainerWidgetState createState() => _DpadContainerWidgetState();
}

class _DpadContainerWidgetState extends State<DpadContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return DpadContainer(
      onClick: () {},
      onFocus: (value) {},
      child: widget.child!,
    );
  }
}
