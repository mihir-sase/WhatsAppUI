import 'package:flutter/material.dart';

import '../screens/SplashScreen.dart';
import '../screens/chat/ChatScreen.dart';
import '../screens/home/HomeScreen.dart';
import '../screens/chat/ProfileScreen.dart';
import '../screens/chat/NewChatScreen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case '/home':
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case '/chat':
        return MaterialPageRoute(builder: (_) => ChatScreen(args));
      case '/profile':
        return MaterialPageRoute(builder: (_) => ProfileScreen(args));
      case '/newChat':
        return MaterialPageRoute(builder: (_) => NewChatScreen());

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
