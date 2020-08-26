import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:soul_master/widgets/joypad.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // 设置屏幕方向(设置屏幕方向为横向)
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);

  // 禁止所有UI层(设置全屏)
  await SystemChrome.setEnabledSystemUIOverlays([]);

  // 运行APP
  runApp(
    Directionality(
      textDirection: TextDirection.ltr,
      child: Stack(
        children: [
          // 为游戏提供占位符
          Container(
            color: Color(0xff27ae60),
          ),
          // 摇杆层
          Column(
            children: [
              Spacer(),
              Row(
                children: [
                  SizedBox(width: 48),
                  Joypad(
                    onChange: (Offset delta) => print(delta),
                  ),
                  Spacer(),
                  Joypad(
                    onChange: (Offset delta) => print(delta),
                  ),
                  SizedBox(width: 48),
                ],
              ),
              SizedBox(height: 24),
            ],
          ),
        ],
      ),
    ),
  );
}
