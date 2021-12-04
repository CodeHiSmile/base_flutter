import 'package:demo/application/bottom_bar/bottom_bar_cubit.dart';
import 'package:demo/commons/app_colors.dart';
import 'package:demo/commons/app_shadow.dart';
import 'package:demo/commons/app_text_styles.dart';
import 'package:demo/configs/app_constant.dart';
import 'package:demo/domain/models/entities/icon_bottombar.dart';
import 'package:demo/presentation/components/behavior_custom.dart';
import 'package:demo/presentation/pages/home/home_page.dart';
import 'package:demo/presentation/pages/note/note_page.dart';
import 'package:demo/presentation/pages/notification/notification_page.dart';
import 'package:demo/presentation/pages/personal/personal_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomBarPage extends StatefulWidget {
  const BottomBarPage({Key? key}) : super(key: key);

  @override
  _BottomBarPageState createState() => _BottomBarPageState();
}

class _BottomBarPageState extends State<BottomBarPage>  with SingleTickerProviderStateMixin {
  late PageController _pageController;
  late BottomBarCubit _cubit;

  @override
  void initState() {
    _cubit = BottomBarCubit();
    super.initState();
    _pageController = PageController(initialPage: 0, keepPage: true);
  }

  void onTappedBar(int index) {
    _cubit.changeTabIndex(index);
    _pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _cubit,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: _buildPageView(context),
        bottomNavigationBar: _buildBottomNavigationBar(),
      ),
    );
  }

  Widget _buildPageView(BuildContext context) {
    return ScrollConfiguration(
      behavior: BehaviorCustom(),
      child: PageView(
        physics: const ClampingScrollPhysics(),
        controller: _pageController,
        onPageChanged: (value) {
          onTappedBar(value);
        },
        children: const [
          HomePage(),
          NotePage(),
          NotificationPage(),
          PersonalPage(),
        ],
      ),
    );
  }

  Widget _buildBottomNavigationBar() {
    return BlocBuilder<BottomBarCubit, BottomBarState>(
      bloc: _cubit,
      buildWhen: (prev, current) => prev.indexTab != current.indexTab,
      builder: (context, state) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: AppShadow.boxShadowBottomBar,
          ),
          child: BottomNavigationBar(
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.transparent,
            currentIndex: state.indexTab!,
            unselectedItemColor: AppColors.titleGray,
            selectedLabelStyle: AppTextStyle.textBlueS12Bold,
            unselectedLabelStyle: AppTextStyle.textGrayS12,
            items: [
              _buildItem(AppConstant.iconBottomBars[0], 'Home'),
              _buildItem(AppConstant.iconBottomBars[1], 'Note'),
              _buildItem(AppConstant.iconBottomBars[2], 'Notifications'),
              _buildItem(AppConstant.iconBottomBars[3], 'Personal'),
            ],
            onTap: (int index) {
              onTappedBar(index);
            },
          ),
        );
      },
    );
  }

  BottomNavigationBarItem _buildItem(IconBottomBar icon, String label) {
    return BottomNavigationBarItem(
      icon: Container(
        height: 40,
        padding: const EdgeInsets.only(bottom: 3, top: 10),
        child: Icon(
          icon.inactive,
        ),
      ),
      label: label,
      activeIcon: SizedBox(
        height: 40,
        child: Column(
          children: [
            Container(height: 8),
            Padding(
              padding: const EdgeInsets.only(bottom: 3, top: 3),
              child: Icon(icon.active),
            ),
          ],
        ),
      ),
    );
  }
}
