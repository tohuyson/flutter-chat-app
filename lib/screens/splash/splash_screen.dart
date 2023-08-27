import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_app/blocs/auth/auth_bloc.dart';
import 'package:flutter_chat_app/screens/chat_list/chat_list_screen.dart';
import 'package:flutter_chat_app/screens/guest/guest_screen.dart';
import 'package:flutter_chat_app/utils/utils.dart';
import 'package:flutter_chat_app/widgets/widgets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  static const routeName = 'splash';

  @override
  State<StatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool _isInit = false;

  @override
  void didChangeDependencies() {
    _initialize();
    super.didChangeDependencies();
  }

  Future<void> _initialize() async {
    if (!_isInit) {
      await Future.delayed(const Duration(microseconds: 500));

      if (!mounted) return;

      final authState = context.read<AuthBloc>().state;

      final redirectScreen = authState.isAuthenticated
          ? ChatListScreen.routeName
          : GuestScreen.routeName;

      Navigator.of(context).pushReplacementNamed(redirectScreen);
      _isInit = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BlankContent(
        isLoading: true,
      ),
    );
  }
}
