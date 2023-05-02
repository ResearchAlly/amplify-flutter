// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.cloud_formation.model.register_type_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/logging_config.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/registry_type.dart'
    as _i3;

part 'register_type_input.g.dart';

abstract class RegisterTypeInput
    with _i1.HttpInput<RegisterTypeInput>, _i2.AWSEquatable<RegisterTypeInput>
    implements Built<RegisterTypeInput, RegisterTypeInputBuilder> {
  factory RegisterTypeInput({
    _i3.RegistryType? type,
    required String typeName,
    required String schemaHandlerPackage,
    _i4.LoggingConfig? loggingConfig,
    String? executionRoleArn,
    String? clientRequestToken,
  }) {
    return _$RegisterTypeInput._(
      type: type,
      typeName: typeName,
      schemaHandlerPackage: schemaHandlerPackage,
      loggingConfig: loggingConfig,
      executionRoleArn: executionRoleArn,
      clientRequestToken: clientRequestToken,
    );
  }

  factory RegisterTypeInput.build(
      [void Function(RegisterTypeInputBuilder) updates]) = _$RegisterTypeInput;

  const RegisterTypeInput._();

  factory RegisterTypeInput.fromRequest(
    RegisterTypeInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    RegisterTypeInputAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RegisterTypeInputBuilder b) {}

  /// The kind of extension.
  _i3.RegistryType? get type;

  /// The name of the extension being registered.
  ///
  /// We suggest that extension names adhere to the following patterns:
  ///
  /// *   For resource types, _company\_or\_organization_::_service_::_type_.
  ///
  /// *   For modules, _company\_or\_organization_::_service_::_type_::MODULE.
  ///
  /// *   For hooks, _MyCompany_::_Testing_::_MyTestHook_.
  ///
  ///
  /// The following organization namespaces are reserved and can't be used in your extension names:
  ///
  /// *   `Alexa`
  ///
  /// *   `AMZN`
  ///
  /// *   `Amazon`
  ///
  /// *   `AWS`
  ///
  /// *   `Custom`
  ///
  /// *   `Dev`
  String get typeName;

  /// A URL to the S3 bucket containing the extension project package that contains the necessary files for the extension you want to register.
  ///
  /// For information about generating a schema handler package for the extension you want to register, see [submit](https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-cli-submit.html) in the _CloudFormation CLI User Guide_.
  ///
  /// The user registering the extension must be able to access the package in the S3 bucket. That's, the user needs to have [GetObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html) permissions for the schema handler package. For more information, see [Actions, Resources, and Condition Keys for Amazon S3](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazons3.html) in the _Identity and Access Management User Guide_.
  String get schemaHandlerPackage;

  /// Specifies logging configuration information for an extension.
  _i4.LoggingConfig? get loggingConfig;

  /// The Amazon Resource Name (ARN) of the IAM role for CloudFormation to assume when invoking the extension.
  ///
  /// For CloudFormation to assume the specified execution role, the role must contain a trust relationship with the CloudFormation service principle (`resources.cloudformation.amazonaws.com`). For more information about adding trust relationships, see [Modifying a role trust policy](IAM/latest/UserGuide/roles-managingrole-editing-console.html#roles-managingrole_edit-trust-policy) in the _Identity and Access Management User Guide_.
  ///
  /// If your extension calls Amazon Web Services APIs in any of its handlers, you must create an _[IAM execution role](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles.html)_ that includes the necessary permissions to call those Amazon Web Services APIs, and provision that execution role in your account. When CloudFormation needs to invoke the resource type handler, CloudFormation assumes this execution role to create a temporary session token, which it then passes to the resource type handler, thereby supplying your resource type with the appropriate credentials.
  String? get executionRoleArn;

  /// A unique identifier that acts as an idempotency key for this registration request. Specifying a client request token prevents CloudFormation from generating more than one version of an extension from the same registration request, even if the request is submitted multiple times.
  String? get clientRequestToken;
  @override
  RegisterTypeInput getPayload() => this;
  @override
  List<Object?> get props => [
        type,
        typeName,
        schemaHandlerPackage,
        loggingConfig,
        executionRoleArn,
        clientRequestToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RegisterTypeInput');
    helper.add(
      'type',
      type,
    );
    helper.add(
      'typeName',
      typeName,
    );
    helper.add(
      'schemaHandlerPackage',
      schemaHandlerPackage,
    );
    helper.add(
      'loggingConfig',
      loggingConfig,
    );
    helper.add(
      'executionRoleArn',
      executionRoleArn,
    );
    helper.add(
      'clientRequestToken',
      clientRequestToken,
    );
    return helper.toString();
  }
}

class RegisterTypeInputAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<RegisterTypeInput> {
  const RegisterTypeInputAwsQuerySerializer() : super('RegisterTypeInput');

  @override
  Iterable<Type> get types => const [
        RegisterTypeInput,
        _$RegisterTypeInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  RegisterTypeInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RegisterTypeInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Type':
          if (value != null) {
            result.type = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.RegistryType),
            ) as _i3.RegistryType);
          }
          break;
        case 'TypeName':
          result.typeName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'SchemaHandlerPackage':
          result.schemaHandlerPackage = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'LoggingConfig':
          if (value != null) {
            result.loggingConfig.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.LoggingConfig),
            ) as _i4.LoggingConfig));
          }
          break;
        case 'ExecutionRoleArn':
          if (value != null) {
            result.executionRoleArn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ClientRequestToken':
          if (value != null) {
            result.clientRequestToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as RegisterTypeInput);
    final result = <Object?>[
      const _i1.XmlElementName(
        'RegisterTypeInputResponse',
        _i1.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    if (payload.type != null) {
      result
        ..add(const _i1.XmlElementName('Type'))
        ..add(serializers.serialize(
          payload.type!,
          specifiedType: const FullType.nullable(_i3.RegistryType),
        ));
    }
    result
      ..add(const _i1.XmlElementName('TypeName'))
      ..add(serializers.serialize(
        payload.typeName,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i1.XmlElementName('SchemaHandlerPackage'))
      ..add(serializers.serialize(
        payload.schemaHandlerPackage,
        specifiedType: const FullType(String),
      ));
    if (payload.loggingConfig != null) {
      result
        ..add(const _i1.XmlElementName('LoggingConfig'))
        ..add(serializers.serialize(
          payload.loggingConfig!,
          specifiedType: const FullType(_i4.LoggingConfig),
        ));
    }
    if (payload.executionRoleArn != null) {
      result
        ..add(const _i1.XmlElementName('ExecutionRoleArn'))
        ..add(serializers.serialize(
          payload.executionRoleArn!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.clientRequestToken != null) {
      result
        ..add(const _i1.XmlElementName('ClientRequestToken'))
        ..add(serializers.serialize(
          payload.clientRequestToken!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}