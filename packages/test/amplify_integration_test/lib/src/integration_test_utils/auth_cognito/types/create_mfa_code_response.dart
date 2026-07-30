// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';

import 'package:amplify_core/amplify_core.dart';

/// A response containing a manually-created MFA code for a test user.
class CreateMFACodeResponse
    with AWSDebuggable, AWSSerializable<Map<String, Object?>> {
  /// Creates a [CreateMFACodeResponse].
  const CreateMFACodeResponse({
    required this.username,
    required this.code,
    required this.userAttributes,
  });

  /// Creates a [CreateMFACodeResponse] from its JSON representation.
  factory CreateMFACodeResponse.fromJson(Map<String, Object?> json) {
    final userAttributesJson =
        jsonDecode(json['userAttributes'] as String) as Map<String, Object?>;
    return CreateMFACodeResponse(
      username: json['username'] as String,
      code: json['code'] as String,
      userAttributes: userAttributesJson.map((key, value) {
        return MapEntry(CognitoUserAttributeKey.parse(key), value as String);
      }),
    );
  }

  /// The username of the test user the code was created for.
  final String username;

  /// The generated MFA code.
  final String code;

  /// The Cognito user attributes associated with the test user.
  final Map<CognitoUserAttributeKey, String> userAttributes;

  @override
  String get runtimeTypeName => 'CreateMFACodeResponse';

  @override
  Map<String, Object?> toJson() => {
    'username': username,
    'code': code,
    'userAttributes': userAttributes.map((key, value) {
      return MapEntry(key.toJson(), value);
    }),
  };
}
