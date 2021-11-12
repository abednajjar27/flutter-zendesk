// Autogenerated from Pigeon (v0.1.9), do not edit directly.
// See also: https://pub.dev/packages/pigeon
// ignore_for_file: public_member_api_docs, non_constant_identifier_names, avoid_as, unused_import
import 'dart:async';
import 'dart:typed_data' show Uint8List, Int32List, Int64List, Float64List;

import 'package:flutter/services.dart';

class InitializeRequest {
  late String accountKey;
  late String appId;
  // ignore: unused_element
  Map<dynamic, dynamic> _toMap() {
    final Map<dynamic, dynamic> pigeonMap = <dynamic, dynamic>{};
    pigeonMap['accountKey'] = accountKey;
    pigeonMap['appId'] = appId;
    return pigeonMap;
  }

  // ignore: unused_element
  static InitializeRequest? _fromMap(Map<dynamic, dynamic> pigeonMap) {
    if (pigeonMap == null) {
      return null;
    }
    final InitializeRequest result = InitializeRequest();
    result.accountKey = pigeonMap['accountKey'];
    result.appId = pigeonMap['appId'];
    return result;
  }
}

class SetDepartmentRequest {
  late String department;
  // ignore: unused_element
  Map<dynamic, dynamic> _toMap() {
    final Map<dynamic, dynamic> pigeonMap = <dynamic, dynamic>{};
    pigeonMap['department'] = department;
    return pigeonMap;
  }

  // ignore: unused_element
  static SetDepartmentRequest? _fromMap(Map<dynamic, dynamic> pigeonMap) {
    if (pigeonMap == null) {
      return null;
    }
    final SetDepartmentRequest result = SetDepartmentRequest();
    result.department = pigeonMap['department'];
    return result;
  }
}

class StartChatRequest {
  late bool? isPreChatFormEnabled;
  late bool? isOfflineFormEnabled;
  late bool? isAgentAvailabilityEnabled;
  late bool? isChatTranscriptPromptEnabled;
  late String? messagingName;
  late String? iosBackButtonTitle;
  late int? iosNavigationBarColor;
  late int? iosNavigationTitleColor;
  // ignore: unused_element
  Map<dynamic, dynamic> _toMap() {
    final Map<dynamic, dynamic> pigeonMap = <dynamic, dynamic>{};
    pigeonMap['isPreChatFormEnabled'] = isPreChatFormEnabled;
    pigeonMap['isOfflineFormEnabled'] = isOfflineFormEnabled;
    pigeonMap['isAgentAvailabilityEnabled'] = isAgentAvailabilityEnabled;
    pigeonMap['isChatTranscriptPromptEnabled'] = isChatTranscriptPromptEnabled;
    pigeonMap['messagingName'] = messagingName;
    pigeonMap['iosBackButtonTitle'] = iosBackButtonTitle;
    pigeonMap['iosNavigationBarColor'] = iosNavigationBarColor;
    pigeonMap['iosNavigationTitleColor'] = iosNavigationTitleColor;
    return pigeonMap;
  }

  // ignore: unused_element
  static StartChatRequest? _fromMap(Map<dynamic, dynamic> pigeonMap) {
    if (pigeonMap == null) {
      return null;
    }
    final StartChatRequest result = StartChatRequest();
    result.isPreChatFormEnabled = pigeonMap['isPreChatFormEnabled'];
    result.isOfflineFormEnabled = pigeonMap['isOfflineFormEnabled'];
    result.isAgentAvailabilityEnabled = pigeonMap['isAgentAvailabilityEnabled'];
    result.isChatTranscriptPromptEnabled =
        pigeonMap['isChatTranscriptPromptEnabled'];
    result.messagingName = pigeonMap['messagingName'];
    result.iosBackButtonTitle = pigeonMap['iosBackButtonTitle'];
    result.iosNavigationBarColor = pigeonMap['iosNavigationBarColor'];
    result.iosNavigationTitleColor = pigeonMap['iosNavigationTitleColor'];
    return result;
  }
}

class SetVisitorInfoRequest {
  late String name;
  late String email;
  late String phoneNumber;
  // ignore: unused_element
  Map<dynamic, dynamic> _toMap() {
    final Map<dynamic, dynamic> pigeonMap = <dynamic, dynamic>{};
    pigeonMap['name'] = name;
    pigeonMap['email'] = email;
    pigeonMap['phoneNumber'] = phoneNumber;
    return pigeonMap;
  }

  // ignore: unused_element
  static SetVisitorInfoRequest? _fromMap(Map<dynamic, dynamic> pigeonMap) {
    if (pigeonMap == null) {
      return null;
    }
    final SetVisitorInfoRequest result = SetVisitorInfoRequest();
    result.name = pigeonMap['name'];
    result.email = pigeonMap['email'];
    result.phoneNumber = pigeonMap['phoneNumber'];
    return result;
  }
}

class VisitorTagsRequest {
  late List tags;
  // ignore: unused_element
  Map<dynamic, dynamic> _toMap() {
    final Map<dynamic, dynamic> pigeonMap = <dynamic, dynamic>{};
    pigeonMap['tags'] = tags;
    return pigeonMap;
  }

  // ignore: unused_element
  static VisitorTagsRequest? _fromMap(Map<dynamic, dynamic> pigeonMap) {
    if (pigeonMap == null) {
      return null;
    }
    final VisitorTagsRequest result = VisitorTagsRequest();
    result.tags = pigeonMap['tags'];
    return result;
  }
}

class VisitorNoteRequest {
  late String note;
  // ignore: unused_element
  Map<dynamic, dynamic> _toMap() {
    final Map<dynamic, dynamic> pigeonMap = <dynamic, dynamic>{};
    pigeonMap['note'] = note;
    return pigeonMap;
  }

  // ignore: unused_element
  static VisitorNoteRequest? _fromMap(Map<dynamic, dynamic> pigeonMap) {
    if (pigeonMap == null) {
      return null;
    }
    final VisitorNoteRequest result = VisitorNoteRequest();
    result.note = pigeonMap['note'];
    return result;
  }
}

class ChatApi {
  Future<void> initialize(InitializeRequest arg) async {
    final Map<dynamic, dynamic> requestMap = arg._toMap();
    const BasicMessageChannel<dynamic> channel = BasicMessageChannel<dynamic>(
        'dev.flutter.pigeon.ChatApi.initialize', StandardMessageCodec());

    final Map<dynamic, dynamic> replyMap = await channel.send(requestMap);
    if (replyMap == null) {
      throw PlatformException(
          code: 'channel-error',
          message: 'Unable to establish connection on channel.',
          details: null);
    } else if (replyMap['error'] != null) {
      final Map<dynamic, dynamic> error = replyMap['error'];
      throw PlatformException(
          code: error['code'],
          message: error['message'],
          details: error['details']);
    } else {
      // noop
    }
  }

  Future<void> setDepartment(SetDepartmentRequest arg) async {
    final Map<dynamic, dynamic> requestMap = arg._toMap();
    const BasicMessageChannel<dynamic> channel = BasicMessageChannel<dynamic>(
        'dev.flutter.pigeon.ChatApi.setDepartment', StandardMessageCodec());

    final Map<dynamic, dynamic> replyMap = await channel.send(requestMap);
    if (replyMap == null) {
      throw PlatformException(
          code: 'channel-error',
          message: 'Unable to establish connection on channel.',
          details: null);
    } else if (replyMap['error'] != null) {
      final Map<dynamic, dynamic> error = replyMap['error'];
      throw PlatformException(
          code: error['code'],
          message: error['message'],
          details: error['details']);
    } else {
      // noop
    }
  }

  Future<void> startChat(StartChatRequest arg) async {
    final Map<dynamic, dynamic> requestMap = arg._toMap();
    const BasicMessageChannel<dynamic> channel = BasicMessageChannel<dynamic>(
        'dev.flutter.pigeon.ChatApi.startChat', StandardMessageCodec());

    final Map<dynamic, dynamic> replyMap = await channel.send(requestMap);
    if (replyMap == null) {
      throw PlatformException(
          code: 'channel-error',
          message: 'Unable to establish connection on channel.',
          details: null);
    } else if (replyMap['error'] != null) {
      final Map<dynamic, dynamic> error = replyMap['error'];
      throw PlatformException(
          code: error['code'],
          message: error['message'],
          details: error['details']);
    } else {
      // noop
    }
  }
}

class ProfileApi {
  Future<void> setVisitorInfo(SetVisitorInfoRequest arg) async {
    final Map<dynamic, dynamic> requestMap = arg._toMap();
    const BasicMessageChannel<dynamic> channel = BasicMessageChannel<dynamic>(
        'dev.flutter.pigeon.ProfileApi.setVisitorInfo', StandardMessageCodec());

    final Map<dynamic, dynamic> replyMap = await channel.send(requestMap);
    if (replyMap == null) {
      throw PlatformException(
          code: 'channel-error',
          message: 'Unable to establish connection on channel.',
          details: null);
    } else if (replyMap['error'] != null) {
      final Map<dynamic, dynamic> error = replyMap['error'];
      throw PlatformException(
          code: error['code'],
          message: error['message'],
          details: error['details']);
    } else {
      // noop
    }
  }

  Future<void> addVisitorTags(VisitorTagsRequest arg) async {
    final Map<dynamic, dynamic> requestMap = arg._toMap();
    const BasicMessageChannel<dynamic> channel = BasicMessageChannel<dynamic>(
        'dev.flutter.pigeon.ProfileApi.addVisitorTags', StandardMessageCodec());

    final Map<dynamic, dynamic> replyMap = await channel.send(requestMap);
    if (replyMap == null) {
      throw PlatformException(
          code: 'channel-error',
          message: 'Unable to establish connection on channel.',
          details: null);
    } else if (replyMap['error'] != null) {
      final Map<dynamic, dynamic> error = replyMap['error'];
      throw PlatformException(
          code: error['code'],
          message: error['message'],
          details: error['details']);
    } else {
      // noop
    }
  }

  Future<void> removeVisitorTags(VisitorTagsRequest arg) async {
    final Map<dynamic, dynamic> requestMap = arg._toMap();
    const BasicMessageChannel<dynamic> channel = BasicMessageChannel<dynamic>(
        'dev.flutter.pigeon.ProfileApi.removeVisitorTags',
        StandardMessageCodec());

    final Map<dynamic, dynamic> replyMap = await channel.send(requestMap);
    if (replyMap == null) {
      throw PlatformException(
          code: 'channel-error',
          message: 'Unable to establish connection on channel.',
          details: null);
    } else if (replyMap['error'] != null) {
      final Map<dynamic, dynamic> error = replyMap['error'];
      throw PlatformException(
          code: error['code'],
          message: error['message'],
          details: error['details']);
    } else {
      // noop
    }
  }

  Future<void> setVisitorNote(VisitorNoteRequest arg) async {
    final Map<dynamic, dynamic> requestMap = arg._toMap();
    const BasicMessageChannel<dynamic> channel = BasicMessageChannel<dynamic>(
        'dev.flutter.pigeon.ProfileApi.setVisitorNote', StandardMessageCodec());

    final Map<dynamic, dynamic> replyMap = await channel.send(requestMap);
    if (replyMap == null) {
      throw PlatformException(
          code: 'channel-error',
          message: 'Unable to establish connection on channel.',
          details: null);
    } else if (replyMap['error'] != null) {
      final Map<dynamic, dynamic> error = replyMap['error'];
      throw PlatformException(
          code: error['code'],
          message: error['message'],
          details: error['details']);
    } else {
      // noop
    }
  }

  Future<void> appendVisitorNote(VisitorNoteRequest arg) async {
    final Map<dynamic, dynamic> requestMap = arg._toMap();
    const BasicMessageChannel<dynamic> channel = BasicMessageChannel<dynamic>(
        'dev.flutter.pigeon.ProfileApi.appendVisitorNote',
        StandardMessageCodec());

    final Map<dynamic, dynamic> replyMap = await channel.send(requestMap);
    if (replyMap == null) {
      throw PlatformException(
          code: 'channel-error',
          message: 'Unable to establish connection on channel.',
          details: null);
    } else if (replyMap['error'] != null) {
      final Map<dynamic, dynamic> error = replyMap['error'];
      throw PlatformException(
          code: error['code'],
          message: error['message'],
          details: error['details']);
    } else {
      // noop
    }
  }

  Future<void> clearVisitorNotes() async {
    const BasicMessageChannel<dynamic> channel = BasicMessageChannel<dynamic>(
        'dev.flutter.pigeon.ProfileApi.clearVisitorNotes',
        StandardMessageCodec());

    final Map<dynamic, dynamic> replyMap = await channel.send(null);
    if (replyMap == null) {
      throw PlatformException(
          code: 'channel-error',
          message: 'Unable to establish connection on channel.',
          details: null);
    } else if (replyMap['error'] != null) {
      final Map<dynamic, dynamic> error = replyMap['error'];
      throw PlatformException(
          code: error['code'],
          message: error['message'],
          details: error['details']);
    } else {
      // noop
    }
  }
}
