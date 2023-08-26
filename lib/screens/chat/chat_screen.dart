import 'package:flutter/material.dart';
import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_app/blocs/auth/auth_bloc.dart';
import 'package:flutter_chat_app/blocs/chat/chat_bloc.dart';
import 'package:flutter_chat_app/models/models.dart';
import 'package:flutter_chat_app/utils/utils.dart';
import 'package:flutter_chat_app/widgets/widgets.dart';
import 'data.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  static const routeName = "chat";

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    final chatBloc = context.read<ChatBloc>();
    final authBloc = context.read<AuthBloc>();

    return StartUpContainer(
      onInit: () {
        /// create a chat and get a chat messages
        chatBloc.add(const GetChatMessage());
      },
      onDisposed: () {
        chatBloc.add(const ChatReset());
        chatBloc.add(const ChatStarted());
      },
      child: Scaffold(
        appBar: AppBar(
          title: BlocConsumer<ChatBloc, ChatState>(
            listener: (_, __) {},
            builder: (context, state) {
              final chat = state.selectedChat;
              vLog(chat);
              return Text(
                chat == null
                    ? 'N/A'
                    : getChatName(chat.participants, authBloc.state.user!),
              );
            },
          ),
        ),
        body: BlocBuilder<ChatBloc, ChatState>(
          builder: (context, state) {
            vLog(state.chatMessages);
            return DashChat(
              currentUser: authBloc.state.user!.toChatUser,
              onSend: (ChatMessage chatMessage) {
                chatBloc.add(
                  SendMessage(state.selectedChat!.id, chatMessage),
                );
              },
              messages: state.uiChatMessages,
              messageListOptions: MessageListOptions(
                onLoadEarlier: () async {
                  chatBloc.add(const LoadMoreChatMessage());

                  /// Load more messages
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
