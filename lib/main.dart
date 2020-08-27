import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:soul_master/soul-master-game.dart';
import 'package:soul_master/ui.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // 设置屏幕方向(设置屏幕方向为横向)
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);

  // 禁止所有UI层(设置全屏)
  await SystemChrome.setEnabledSystemUIOverlays([]);

  //初始化游戏
  final SoulMasterGame game = SoulMasterGame();

  // 运行APP
  runApp(
    Directionality(
      textDirection: TextDirection.ltr,
      child: Stack(
        children: [
          // 为游戏提供占位符
          game.widget,
          // ui层
          UI(
            game: game,
          )
        ],
      ),
    ),
  );
}
