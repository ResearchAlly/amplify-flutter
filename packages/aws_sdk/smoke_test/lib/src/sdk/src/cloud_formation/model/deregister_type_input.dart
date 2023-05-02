// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.cloud_formation.model.deregister_type_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/registry_type.dart'
    as _i3;

part 'deregister_type_input.g.dart';

abstract class DeregisterTypeInput
    with
        _i1.HttpInput<DeregisterTypeInput>,
        _i2.AWSEquatable<DeregisterTypeInput>
    implements Built<DeregisterTypeInput, DeregisterTypeInputBuilder> {
  factory DeregisterTypeInput({
    String? arn,
    _i3.RegistryType? type,
    String? typeName,
    String? versionId,
  }) {
    return _$DeregisterTypeInput._(
      arn: arn,
      type: type,
      typeName: typeName,
      versionId: versionId,
    );
  }

  factory DeregisterTypeInput.build(
          [void Function(DeregisterTypeInputBuilder) updates]) =
      _$DeregisterTypeInput;

  const DeregisterTypeInput._();

  factory DeregisterTypeInput.fromRequest(
    DeregisterTypeInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DeregisterTypeInputAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeregisterTypeInputBuilder b) {}

  /// The Amazon Resource Name (ARN) of the extension.
  ///
  /// Conditional: You must specify either `TypeName` and `Type`, or `Arn`.
  String? get arn;

  /// The kind of extension.
  ///
  /// Conditional: You must specify either `TypeName` and `Type`, or `Arn`.
  _i3.RegistryType? get type;

  /// The name of the extension.
  ///
  /// Conditional: You must specify either `TypeName` and `Type`, or `Arn`.
  String? get typeName;

  /// The ID of a specific version of the extension. The version ID is the value at the end of the Amazon Resource Name (ARN) assigned to the extension version when it is registered.
  String? get versionId;
  @override
  DeregisterTypeInput getPayload() => this;
  @override
  List<Object?> get props => [
        arn,
        type,
        typeName,
        versionId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeregisterTypeInput');
    helper.add(
      'arn',
      arn,
    );
    helper.add(
      'type',
      type,
    );
    helper.add(
      'typeName',
      typeName,
    );
    helper.add(
      'versionId',
      versionId,
    );
    return helper.toString();
  }
}

class DeregisterTypeInputAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<DeregisterTypeInput> {
  const DeregisterTypeInputAwsQuerySerializer() : super('DeregisterTypeInput');

  @override
  Iterable<Type> get types => const [
        DeregisterTypeInput,
        _$DeregisterTypeInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  DeregisterTypeInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeregisterTypeInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Arn':
          if (value != null) {
            result.arn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Type':
          if (value != null) {
            result.type = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.RegistryType),
            ) as _i3.RegistryType);
          }
          break;
        case 'TypeName':
          if (value != null) {
            result.typeName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'VersionId':
          if (value != null) {
            result.versionId = (serializers.deserialize(
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
    final payload = (object as DeregisterTypeInput);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DeregisterTypeInputResponse',
        _i1.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    if (payload.arn != null) {
      result
        ..add(const _i1.XmlElementName('Arn'))
        ..add(serializers.serialize(
          payload.arn!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.type != null) {
      result
        ..add(const _i1.XmlElementName('Type'))
        ..add(serializers.serialize(
          payload.type!,
          specifiedType: const FullType.nullable(_i3.RegistryType),
        ));
    }
    if (payload.typeName != null) {
      result
        ..add(const _i1.XmlElementName('TypeName'))
        ..add(serializers.serialize(
          payload.typeName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.versionId != null) {
      result
        ..add(const _i1.XmlElementName('VersionId'))
        ..add(serializers.serialize(
          payload.versionId!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}