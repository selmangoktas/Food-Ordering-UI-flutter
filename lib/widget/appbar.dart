import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:neumorphism/theme/theme_state.dart';
import 'package:neumorphism/config/screen.dart';

class appBarToolWidget extends StatefulWidget {
  final String title;

  const appBarToolWidget({Key key, this.title}) : super(key: key);
  @override
  _appBarToolWidgetState createState() => _appBarToolWidgetState();
}

class _appBarToolWidgetState extends State<appBarToolWidget> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThemeState>(
      builder: (val) {
        return Container(
          height: context.sizeH(.4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                width: context.sizeW(.1),
                height: context.sizeH(.1),
                child: Icon(Icons.arrow_left),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: context.sizeW(.7),
                  child: Text('title'.tr ?? 'My Producy'),
                ),
              ),
              Container(
                width: context.sizeW(.1),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      width: context.sizeW(.1),
                      height: context.sizeH(.1),
                      child: Icon(Icons.arrow_left),
                    ),
                    Container(
                      width: context.sizeW(.1),
                      child: InkWell(
                        onTap: () {
                          val.changeLocale(
                            val.locale == Locale('tr', 'TR')
                                ? Locale('en', 'US')
                                : Locale('tr', 'TR'),
                          );
                        },
                        child: Icon(
                          Icons.language,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
