import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import 'package:jettickets/screen/anyway_screen.dart';
import 'package:jettickets/screen/subscription_screen.dart';
import '../screen/hotels_screen.dart';
import '../screen/main_screen.dart';
import '../screen/profile_screen.dart';

part 'navi_event.dart';
part 'navi_state.dart';

class NaviBloc extends Bloc<NaviEvent, NaviState> {
  final int discoverIndex = 1;

  NaviBloc()
      : super(const NaviState(0, [
    MainScreen(),
    HotelsScreen(),
    AnywayScreen(),
    SubscriptionScreen(),
    ProfileScreen(),
  ])) {
    on<NaviEvent>(_onNavi);
    // on<SwitchNaviEvent>(_onSwitch);
  }

  _onNavi(NaviEvent event, Emitter emit) {
    emit(NaviState(event.index, state.screens));
  }
  // _onSwitch(SwitchNaviEvent event, Emitter emit){
  //   List<Widget> twin =[];
  //   twin.addAll(state.screens);
  //   // twin[0] = twin.first.key == const MainScreen().key
  //   //     ?  KitchenScreen(key: const Key('9'),title: event.title,)
  //   //     : const MainScreen(key: Key('6'));
  //   emit(NaviState(state.index, twin));
  // }
}