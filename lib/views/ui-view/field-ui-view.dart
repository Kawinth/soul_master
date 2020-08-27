import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:soul_master/widgets/ui/joypad.dart';
import 'package:soul_master/widgets/ui/basic-button.dart';
import 'package:soul_master/views/ui-view/field-ui-callbacks.dart';

class FieldUIView extends StatefulWidget {
  final Size screenSize;
  // 这个实例变量等于横屏下屏幕高度除以9
  final double tileLenth;

  FieldUIView({
    Key key,
    @required this.screenSize,
    @required this.tileLenth,
  });

  @override
  _FieldUIViewState createState() => new _FieldUIViewState();
}

class _FieldUIViewState extends State<FieldUIView> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //ui的按键层
        Column(
          children: [
            //上边框
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.red,
              ),
            ),

            Expanded(
                flex: 34,
                child: Row(
                  children: [
                    //左边摇杆区
                    Expanded(
                      flex: 3,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              BasicButton(
                                width: widget.tileLenth * 2,
                                tap: Callbacks.tapSkill1,
                                longPress: Callbacks.longPressSkill1,
                              )
                            ],
                          ),
                          Spacer(),
                          Row(
                            children: [
                              SizedBox(
                                width: 25,
                              ),
                              Joypad(
                                onChange: (Offset delta) => print(delta),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          )
                        ],
                      ),
                    ),
                    //右边按键区
                    Expanded(
                      flex: 4,
                      child: Container(
                        color: Colors.yellow,
                      ),
                    ),
                  ],
                )),

            //下边框
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.red,
              ),
            )
          ],
        ),

        //手势层
        Container(),
      ],
    );
  }
}
