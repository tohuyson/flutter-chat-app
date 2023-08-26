import 'package:flutter/material.dart';
import 'package:flutter_chat_app/models/models.dart';
import 'package:flutter_chat_app/utils/utils.dart';

class ChatListItem extends StatelessWidget {
  final ChatEntity item;
  final UserEntity currentUser;
  final void Function(ChatEntity) onPressed;

  const ChatListItem({
    super.key,
    required this.item,
    required this.currentUser,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(
        Icons.account_circle,
        size: 50,
      ),
      title: Text(item.name ?? getChatName(item.participants, currentUser)),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              item.lastMessage?.message ?? "...",
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
          Text(utcToLocal(item.updatedAt)),
        ],
      ),
      onTap: () => onPressed(item),
    );
  }
}
