import 'package:eventapp/pages/eventlist.dart';
import 'package:eventapp/pages/map.dart';
import 'package:eventapp/pages/eventlist.dart';
import 'package:eventapp/pages/settings/settings.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum NavigationEvents {
  MapPageclickedEvent,
  EventlistPageClickedEvent,
  MyEventsPageClickedEvent,
  SettingsPageClickedEvent,
  LogOutPageClickedEvent
}

abstract class NavigationStates {}

class NavigationBloc extends Bloc<NavigationEvents, NavigationStates> {
  NavigationBloc() : super(MapPage());

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents event) async* {
    switch (event) {
      case NavigationEvents.MapPageclickedEvent:
        yield MapPage();
        break;
      case NavigationEvents.EventlistPageClickedEvent:
        yield EventListPage();
        break;
      case NavigationEvents.MyEventsPageClickedEvent:
        yield MapPage();
        break;
      case NavigationEvents.SettingsPageClickedEvent:
        yield MapPage();
        break;
      case NavigationEvents.LogOutPageClickedEvent:
        yield MapPage();
        break;
    }
  }
}
