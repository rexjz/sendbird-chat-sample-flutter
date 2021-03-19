import 'package:flutter/material.dart';

import 'package:sendbirdsdk/sendbirdsdk.dart';
import 'package:sendbird_flutter/styles/color.dart';
import '../channel_view_model.dart';
import 'message_item.dart';

class UserMessageItem extends MessageItem {
  UserMessageItem({
    UserMessage curr,
    BaseMessage prev,
    BaseMessage next,
    ChannelViewModel model,
    bool isMyMessage,
    Function onPress,
    Function onLongPress,
  }) : super(
          curr: curr,
          prev: prev,
          next: next,
          model: model,
          isMyMessage: isMyMessage,
          onPress: onPress,
          onLongPress: onLongPress,
        );

  @override
  Widget get content => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: isMyMessage ? SBColors.primary_300 : SBColors.background_100,
        ),
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: Text(
          curr.message,
          style: TextStyle(
            fontSize: 14,
            color: isMyMessage ? SBColors.ondark_01 : SBColors.onlight_01,
          ),
        ),
      );
}
