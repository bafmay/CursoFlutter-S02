import 'package:app_hoteles/app/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ButtonNavigator extends StatelessWidget {
  const ButtonNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: kBottomNavigationBarHeight * 1.1,
        margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
        decoration: BoxDecoration(
          color: AppTheme.blueDark,
          borderRadius: BorderRadius.circular(25.0),
        ),
        child: Row(
          children: itemsBottonNavigation.map((item) {
            final index = itemsBottonNavigation.indexOf(item);
            return Expanded(
              child: Material(
                color: Colors.transparent,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: SvgPicture.asset(
                    item,
                    width: index == 0 ? 22.0 : 20.0,
                    color: index == 0 ? AppTheme.cyan : Colors.white54,
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
