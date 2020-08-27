import 'dart:ui';
import 'package:flame/game.dart';
import 'package:soul_master/View.dart';

class SoulMasterGame extends Game {
  Size screenSize;
  //当前游戏视图
  View activeView = View.field;

  @override
  void render(Canvas c) {
    if (screenSize != null) {
      // 绘制草坪
      c.drawRect(
        Rect.fromLTWH(
          0,
          0,
          screenSize.width,
          screenSize.height,
        ),
        Paint()..color = Color(0xff270060),
      );
    }
  }

  @override
  void update(double t) {}

  @override
  void resize(Size size) {
    screenSize = size;
    print("游戏内");
    print(screenSize.height);
  }
}
