import 'package:flutter/material.dart';

class CustomerRouter extends PageRouteBuilder {
  final Widget widget;

  CustomerRouter(this.widget)
  :super(
    transitionDuration: Duration(seconds: 1),
    pageBuilder: (BuildContext context, Animation<double> anim1, Animation anim2) {
      return widget;
    },
    transitionsBuilder: (BuildContext context, Animation anim1, Animation anim2, Widget child) {

      // push pop动画
      return SlideTransition(
        position: Tween<Offset>(begin: Offset(1.0, 0.0), end: Offset(0.0, 0.0)).animate(CurvedAnimation(
          parent: anim1,
          curve: Curves.easeIn
        )),
        child: child,

      );


//      // 旋转+缩放
//      return RotationTransition(
//        turns: Tween(begin: 0.0, end:  1.0).animate(CurvedAnimation(
//          parent: anim1,
//          curve: Curves.fastOutSlowIn
//
//        )),
//        child: ScaleTransition(
//          scale: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
//            parent: anim1,
//            curve: Curves.fastOutSlowIn
//          )),
//          child: child,
//        ),
//
//      );

      // 缩放动画
//      return ScaleTransition(
//        scale: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
//          parent: anim1,
//          curve: Curves.fastOutSlowIn
//
//        )),
//        child: child,
//      );

      // 淡入淡出
//      return FadeTransition(
//        opacity: Tween(begin: 0.0, end: 1.0).animate(
//            CurvedAnimation(parent: anim1, curve: Curves.fastOutSlowIn)
//        ),
//        child: child,
//      );


    }

  );

}