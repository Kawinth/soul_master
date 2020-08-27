import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:soul_master/soul-master-game.dart';
import 'package:soul_master/View.dart';
import 'package:soul_master/views/ui-view/field-ui-view.dart';

class UI extends StatefulWidget {
  final SoulMasterGame game;
  const UI({Key key, @required this.game}) : super(key: key);

  @override
  _UIState createState() => new _UIState();
}

class _UIState extends State<UI> {
  Size screenSize;
  // 这个实例变量等于横屏下屏幕高度除以9
  double tileLenth;

  @override
  void initState() {
    super.initState();

    /// window.physicalSize代表屏幕的实际像素尺寸
    ///    print(window.physicalSize);
    /// 以下为逻辑像素尺寸
    MediaQueryData mediaQuery = MediaQueryData.fromWindow(window);
    screenSize = mediaQuery.size;
    tileLenth = screenSize.height / 9;
  }

  @override
  Widget build(BuildContext context) {
    if (widget.game.activeView == View.entrypage) {
    } else if (widget.game.activeView == View.maincity) {
    } else if (widget.game.activeView == View.field) {
      return FieldUIView(screenSize: screenSize, tileLenth: tileLenth);
    } else {
      throw NullThrownError();
    }
  }
}
