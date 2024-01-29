import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:teacherstools/Screen/widgets/images_container.dart';
import 'package:teacherstools/app/assets/assets_manger.dart';
import 'package:teacherstools/app/constants/extension.dart';

class ToolsPage extends StatelessWidget {
  const ToolsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: 0.023.w(context),
        ),
        child: Column(children: [
          SizedBox(
            height: 0.025.h(context),
          ),
          const ProfileHeaders(),
          SizedBox(
            height: 0.025.h(context),
          ),
          SearchBar(
            bgColors: const Color.fromARGB(59, 0, 0, 0),
          )
        ]),
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({
    super.key,
    required this.bgColors,
  });

  final Color bgColors;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 0.091.h(context),
      width: 1.0.w(context),
      padding: EdgeInsets.symmetric(horizontal: 0.23.w(context)),
      decoration: BoxDecoration(
          color: bgColors,
          borderRadius:
              BorderRadius.all(Radius.circular(0.05.toResponsive(context)))),
      child: Row(children: [
        Expanded(
          child: TextField(
            decoration: InputDecoration(hintText: "Search"),
          ),
        ),
        MeroIconsButtons(
            icons: searchIcons,
            height: 0.12.h(context),
            width: 0.23.w(context),
            backGroundColors: Colors.blue,
            onPressed: () {})
      ]),
    );
  }
}

class ProfileHeaders extends StatelessWidget {
  const ProfileHeaders({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 0.12.h(context),
      width: 1.0.w(context),
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ImagesContainer(
                  height: 0.3.h(context),
                  width: 0.21.w(context),
                  images: profile,
                ),
                SizedBox(
                  width: 0.023.w(context),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Hello,",
                      style: TextStyle(
                        fontFamily: "Roboto",
                        fontSize: 0.015.toResponsive(context),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "Carla Botosh",
                      style: TextStyle(
                        fontFamily: "Roboto",
                        fontSize: 0.015.toResponsive(context),
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ],
                )
              ],
            ),
            MeroIconsButtons(
              onPressed: () {},
              height: 0.09.h(context),
              width: 0.15.w(context),
              icons: homeBottomNavActiveicons,
              backGroundColors: const Color.fromARGB(43, 0, 0, 0),
            ),
          ]),
    );
  }
}

//with radius
class MeroIconsButtons extends StatelessWidget {
  const MeroIconsButtons({
    super.key,
    required this.icons,
    required this.height,
    required this.width,
    required this.backGroundColors,
    required this.onPressed,
  });

  final String icons;
  final double height, width;
  final Color backGroundColors;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            // image: DecorationImage(image: AssetImage(icons)),
            color: backGroundColors,
            borderRadius:
                BorderRadius.all(Radius.circular(0.007.toResponsive(context)))),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SvgPicture.asset(icons),
        ),
      ),
    );
  }
}
