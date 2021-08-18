import 'package:flutter/material.dart';

enum ChatMessageType { text, audio, image, video }
enum MessageStatus { not_sent, not_view, viewed }

class ChatMessage {
  final String? text;
  final ChatMessageType? chatMessageType;
  final MessageStatus messageStatus;
  final bool isSender;

  ChatMessage(
      {this.text,
      @required this.chatMessageType,
      required this.messageStatus,
      required this.isSender});
}

List demoChatMessage = [
  ChatMessage(
      text: 'Hi Souhje',
      chatMessageType: ChatMessageType.text,
      messageStatus: MessageStatus.viewed,
      isSender: true),
  ChatMessage(
      text: 'Hello How are you ',
      chatMessageType: ChatMessageType.text,
      messageStatus: MessageStatus.viewed,
      isSender: true),
  ChatMessage(
      text: '',
      chatMessageType: ChatMessageType.audio,
      messageStatus: MessageStatus.viewed,
      isSender: true),
  ChatMessage(
      text: '',
      chatMessageType: ChatMessageType.video,
      messageStatus: MessageStatus.viewed,
      isSender: true),
  ChatMessage(
      text: 'Error happend ',
      chatMessageType: ChatMessageType.text,
      messageStatus: MessageStatus.not_sent,
      isSender: true),
  ChatMessage(
      text: 'This looks great man!!',
      chatMessageType: ChatMessageType.text,
      messageStatus: MessageStatus.viewed,
      isSender: false),
  ChatMessage(
      text: 'I like it',
      chatMessageType: ChatMessageType.text,
      messageStatus: MessageStatus.not_view,
      isSender: true)
];
