import 'package:data/api/auth/api_user_service.dart';
import 'package:data/api/message/api_message_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../api/auth/auth_models.dart';
import '../api/message/message_models.dart';
import '../storage/app_preferences.dart';

final messageServiceProvider = Provider((ref) => MessageService(
  ref.read(currentUserPod),
  ref.read(apiMessageServiceProvider),
  ref.read(currentSpaceId.notifier),
  ref.read(apiUserServiceProvider),
));
lass MessageService {
  final ApiUser? currentUser;
  final ApiMessageService messageService;
  final StateController<String?> _currentSpaceIdController;
  final ApiUserService userService;

  MessageService(
      this.currentUser,
      this.messageService,
      this._currentSpaceIdController,
      this.userService,
      );

  String? get currentSpaceId => _currentSpaceIdController.state;

  Future<String> createThread(String spaceId, String adminId, List<String> memberIds) async {
    final threadId = await messageService.createThread(spaceId: spaceId, adminId: adminId, memberIds: memberIds);
    return threadId;
  }

  Future<ApiThreadMessage> generateMessage({required String threadId, required String senderId, required String message}) async {
    return messageService.generateMessage(threadId: threadId, senderId: senderId, message: message);
  }

  Future<void> sendMessage(ApiThreadMessage message) async {
    return messageService.sendMessage(message);
  }

  Stream<List<ApiThread>> getThreads(String spaceId) {
    return messageService.getThreads(spaceId, currentUser?.id ?? '');
  }

  Future<ApiThread?> getThread(String threadId) async {
    return await messageService.getThread(threadId).first;
  }

  Stream<ApiThread?> streamThread(String threadId)  {
    return messageService.getThread(threadId);
  }

  Future<List<ApiThreadMessage>> getMessages(String threadId, DateTime? from, {int limit = 20}) async {
    return messageService.getMessages(threadId, from, limit: limit);
  }

  Stream<List<ApiThreadMessage>> getLatestMessages(String threadId, {int limit = 20}) {
    return messageService.streamLatestMessages(threadId, limit: limit);
  }

  Future<List<ApiUserInfo>> getLatestMessageMember(ApiThread thread) {
    return messageService.getLatestMessagesMembers(thread);
  }

  Future<void> addThreadSeenBy(String threadId, String userId) async {
    messageService.addThreadSeenBy(threadId, userId);
  }

 }
