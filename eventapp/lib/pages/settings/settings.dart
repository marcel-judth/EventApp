import 'package:eventapp/pages/sidebar/navigation_bloc.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white, child: Center(child: Text('Settings')));
  }
}
