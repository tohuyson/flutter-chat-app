import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_app/blocs/auth/auth_bloc.dart';
import 'package:flutter_chat_app/cubits/guest/guest_cubit.dart';
import 'package:flutter_chat_app/screens/guest/guest_screen.dart';
import 'package:flutter_chat_app/utils/utils.dart';

class ChatListScreen extends StatelessWidget {
  const ChatListScreen({Key? key}) : super(key: key);

  static const routeName = 'chat-list';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ChatListScreen'),
        actions: [
          BlocConsumer<AuthBloc, AuthState>(
            listener: (context, state) {
              if (!state.isAuthenticated) {
                Navigator.of(context)
                    .pushReplacementNamed(GuestScreen.routeName);
              }
            },
            builder: (context, state) {
              return IconButton(
                onPressed: () {
                  context.read<GuestCubit>().signOut();
                },
                icon: const Icon(Icons.logout),
              );
            },
          ),
        ],
      ),
    );
  }
}
