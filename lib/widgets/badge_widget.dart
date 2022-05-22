import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class BadgeWidget extends StatefulWidget {
  BadgeWidget({Key? key}) : super(key: key);

  @override
  State<BadgeWidget> createState() => _BadgeWidgetState();
}

class _BadgeWidgetState extends State<BadgeWidget> {
  int numForBadge = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Badge(
          animationType: BadgeAnimationType.fade,

          /// instead of "fade" you can put "scale" and "slide"
          showBadge: numForBadge == 0 ? false : true,
          badgeContent: Text("$numForBadge"),
          // badgeColor: Colors.white,
          toAnimate: true,
          shape: BadgeShape.circle,
          child: const Padding(
            padding: EdgeInsets.only(right: 10),
            child: Text(
              "Чек",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        ///
        ///adb tcpip 5555
        Badge(
          badgeContent: Text("$numForBadge"),
          child: const Text("Test"),
          toAnimate: true,
          showBadge: numForBadge == 0 ? false : true,
          animationDuration: const Duration(milliseconds: 500),
          animationType: BadgeAnimationType.scale,
          badgeColor: Colors.green,
        ),
        ///
        ///
        ///
        TextButton(
            onPressed: () {
              setState(() {
                if (numForBadge == 0) {
                  return;
                }
                numForBadge--;
              });
            },
            child: const Text("-")),
        TextButton(
            onPressed: () {
              setState(() {
                numForBadge++;
              });
            },
            child: const Text("+"))
      ],
    );
  }
}
