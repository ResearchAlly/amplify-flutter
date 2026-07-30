// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';

/// The response from the `deleteUser` test resolver.
class DeleteUserResponse {
  /// Creates a [DeleteUserResponse] from its JSON resolver data.
  DeleteUserResponse.fromJson(String resolverData) {
    final parsedMap = (jsonDecode(resolverData) as Map).cast<String, Object?>();
    final deleteUser = parsedMap['deleteUser'] as Map<String, Object?>;
    success = deleteUser['success'] as bool;
    error = deleteUser['error'] as String?;
  }

  /// Whether the user was successfully deleted.
  late bool success;

  /// The error message, if deletion failed.
  String? error;
}
