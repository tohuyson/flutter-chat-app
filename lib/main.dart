import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_app/blocs/auth/auth_bloc.dart';
import 'package:flutter_chat_app/blocs/chat/chat_bloc.dart';
import 'package:flutter_chat_app/blocs/user/user_bloc.dart';
import 'package:flutter_chat_app/cubits/guest/guest_cubit.dart';
import 'package:flutter_chat_app/repositories/auth/auth_repository.dart';
import 'package:flutter_chat_app/repositories/chat/chat_repository.dart';
import 'package:flutter_chat_app/repositories/repositories.dart';
import 'package:flutter_chat_app/repositories/user/user_repository.dart';
import 'package:flutter_chat_app/screens/chat/chat_screen.dart';
import 'package:flutter_chat_app/screens/chat_list/chat_list_screen.dart';
import 'package:flutter_chat_app/screens/guest/guest_screen.dart';
import 'package:flutter_chat_app/screens/splash/splash_screen.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorage.webStorageDirectory
        : await getTemporaryDirectory(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp();

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<AuthRepository>(
          create: (_) => AuthRepository(),
        ),
        RepositoryProvider<ChatRepository>(
          create: (_) => ChatRepository(),
        ),
        RepositoryProvider<UserRepository>(
          create: (_) => UserRepository(),
        ),
        RepositoryProvider<ChatMessageRepository>(
          create: (_) => ChatMessageRepository(),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => AuthBloc()),
          BlocProvider(
            create: (context) => GuestCubit(
              authRepository: context.read<AuthRepository>(),
              authBloc: context.read<AuthBloc>(),
            ),
          ),
          BlocProvider(
            create: (context) => ChatBloc(
              chatRepository: context.read<ChatRepository>(),
              chatMessageRepository: context.read<ChatMessageRepository>(),
            ),
          ),
          BlocProvider(
            create: (context) => UserBloc(
              userRepository: context.read<UserRepository>(),
            ),
          ),
        ],
        child: MaterialApp(
          title: 'Chat App',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          initialRoute: SplashScreen.routeName,
          routes: {
            SplashScreen.routeName: (_) => const SplashScreen(),
            GuestScreen.routeName: (_) => const GuestScreen(),
            ChatListScreen.routeName: (_) => const ChatListScreen(),
            ChatScreen.routeName: (_) => const ChatScreen(),
          },
        ),
      ),
    );
  }
}
