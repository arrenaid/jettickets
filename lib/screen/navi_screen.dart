import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jettickets/def_constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../bloc/navi_bloc.dart';

class NaviScreen extends StatelessWidget {
  const NaviScreen({super.key});

  static const String route = "NaviScreen";

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => NaviBloc(),
      child: BlocBuilder<NaviBloc, NaviState>(
          builder: (BuildContext context, NaviState state) {
        return Scaffold(
          body: IndexedStack(index: state.index, children: state.screens),
          extendBody: true,
          bottomNavigationBar: BottomNavigationBar(
              showSelectedLabels: true,
              showUnselectedLabels: true,
              backgroundColor: defBlack,
              type: BottomNavigationBarType.fixed,
              elevation: 0,
              unselectedItemColor: defGray6,
              selectedItemColor: defBlue,
              selectedFontSize: 10,
              unselectedFontSize: 10,
              //selectedLabelStyle: tsTab,
              currentIndex: state.index,
              items: _getNavigationItems(),
              onTap: (index) {
                context.read<NaviBloc>().add(NaviEvent(index));
              }),
        );
      }),
    );
  }

  List<BottomNavigationBarItem> _getNavigationItems() {
    return [
      BottomNavigationBarItem(
          icon: SvgPicture.asset(
            iconNaviJet,
            color: defGray6,
            width: defIconSize,
            height: defIconSize,
          ),
          activeIcon: SvgPicture.asset(
            iconNaviJet,
            color: defBlue,
            width: defIconSize,
            height: defIconSize,
          ),
          label: 'Авиабилеты'),
      BottomNavigationBarItem(
          icon: SvgPicture.asset(
            iconNaviHotel,
            color: defGray6,
            width: defIconSize,
            height: defIconSize,
          ),
          activeIcon: SvgPicture.asset(
            iconNaviHotel,
            color: defBlue,
            width: defIconSize,
            height: defIconSize,
          ),
          label: 'Отели'),
      BottomNavigationBarItem(
          icon: SvgPicture.asset(
            iconNaviMarker,
            color: defGray6,
            width: defIconSize,
            height: defIconSize,
          ),
          activeIcon: SvgPicture.asset(
            iconNaviMarker,
            color: defBlue,
            width: defIconSize,
            height: defIconSize,
          ),
          label: 'Короче'),
      BottomNavigationBarItem(
          icon: SvgPicture.asset(
            iconNaviBell,
            color: defGray6,
            width: defIconSize,
            height: defIconSize,
          ),
          activeIcon: SvgPicture.asset(
            iconNaviBell,
            color: defBlue,
            width: defIconSize,
            height: defIconSize,
          ),
          label: 'Подписки'),
      BottomNavigationBarItem(
          icon: SvgPicture.asset(
            iconNaviPeople,
            color: defGray6,
            width: defIconSize,
            height: defIconSize,
          ),
          activeIcon: SvgPicture.asset(
            iconNaviPeople,
            color: defBlue,
            width: defIconSize,
            height: defIconSize,
          ),
          label: 'Профиль'),
    ];
  }
}
