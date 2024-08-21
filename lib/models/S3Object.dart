/*
* Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
*
* Licensed under the Apache License, Version 2.0 (the "License").
* You may not use this file except in compliance with the License.
* A copy of the License is located at
*
*  http://aws.amazon.com/apache2.0
*
* or in the "license" file accompanying this file. This file is distributed
* on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
* express or implied. See the License for the specific language governing
* permissions and limitations under the License.
*/

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

// ignore_for_file: public_member_api_docs, annotate_overrides, dead_code, dead_codepublic_member_api_docs, depend_on_referenced_packages, file_names, library_private_types_in_public_api, no_leading_underscores_for_library_prefixes, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, null_check_on_nullable_type_parameter, override_on_non_overriding_member, prefer_adjacent_string_concatenation, prefer_const_constructors, prefer_if_null_operators, prefer_interpolation_to_compose_strings, slash_for_doc_comments, sort_child_properties_last, unnecessary_const, unnecessary_constructor_name, unnecessary_late, unnecessary_new, unnecessary_null_aware_assignments, unnecessary_nullable_for_final_variable_declarations, unnecessary_string_interpolations, use_build_context_synchronously

import 'ModelProvider.dart';
import 'package:amplify_core/amplify_core.dart' as amplify_core;


/** This is an auto generated class representing the S3Object type in your schema. */
class S3Object {
  final String? _name;
  final amplify_core.TemporalDateTime? _date;
  final String? _bucket;
  final String? _region;
  final String? _key;
  final String? _localPath;
  final String? _ownerId;
  final String? _ownerName;

  String? get name {
    return _name;
  }
  
  amplify_core.TemporalDateTime get date {
    try {
      return _date!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get bucket {
    try {
      return _bucket!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get region {
    try {
      return _region!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String? get key {
    return _key;
  }
  
  String? get localPath {
    return _localPath;
  }
  
  String? get ownerId {
    return _ownerId;
  }
  
  String? get ownerName {
    return _ownerName;
  }
  
  const S3Object._internal({name, required date, required bucket, required region, key, localPath, ownerId, ownerName}): _name = name, _date = date, _bucket = bucket, _region = region, _key = key, _localPath = localPath, _ownerId = ownerId, _ownerName = ownerName;
  
  factory S3Object({String? name, required amplify_core.TemporalDateTime date, required String bucket, required String region, String? key, String? localPath, String? ownerId, String? ownerName}) {
    return S3Object._internal(
      name: name,
      date: date,
      bucket: bucket,
      region: region,
      key: key,
      localPath: localPath,
      ownerId: ownerId,
      ownerName: ownerName);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is S3Object &&
      _name == other._name &&
      _date == other._date &&
      _bucket == other._bucket &&
      _region == other._region &&
      _key == other._key &&
      _localPath == other._localPath &&
      _ownerId == other._ownerId &&
      _ownerName == other._ownerName;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("S3Object {");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write("date=" + (_date != null ? _date!.format() : "null") + ", ");
    buffer.write("bucket=" + "$_bucket" + ", ");
    buffer.write("region=" + "$_region" + ", ");
    buffer.write("key=" + "$_key" + ", ");
    buffer.write("localPath=" + "$_localPath" + ", ");
    buffer.write("ownerId=" + "$_ownerId" + ", ");
    buffer.write("ownerName=" + "$_ownerName");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  S3Object copyWith({String? name, amplify_core.TemporalDateTime? date, String? bucket, String? region, String? key, String? localPath, String? ownerId, String? ownerName}) {
    return S3Object._internal(
      name: name ?? this.name,
      date: date ?? this.date,
      bucket: bucket ?? this.bucket,
      region: region ?? this.region,
      key: key ?? this.key,
      localPath: localPath ?? this.localPath,
      ownerId: ownerId ?? this.ownerId,
      ownerName: ownerName ?? this.ownerName);
  }
  
  S3Object copyWithModelFieldValues({
    ModelFieldValue<String?>? name,
    ModelFieldValue<amplify_core.TemporalDateTime>? date,
    ModelFieldValue<String>? bucket,
    ModelFieldValue<String>? region,
    ModelFieldValue<String?>? key,
    ModelFieldValue<String?>? localPath,
    ModelFieldValue<String?>? ownerId,
    ModelFieldValue<String?>? ownerName
  }) {
    return S3Object._internal(
      name: name == null ? this.name : name.value,
      date: date == null ? this.date : date.value,
      bucket: bucket == null ? this.bucket : bucket.value,
      region: region == null ? this.region : region.value,
      key: key == null ? this.key : key.value,
      localPath: localPath == null ? this.localPath : localPath.value,
      ownerId: ownerId == null ? this.ownerId : ownerId.value,
      ownerName: ownerName == null ? this.ownerName : ownerName.value
    );
  }
  
  S3Object.fromJson(Map<String, dynamic> json)  
    : _name = json['name'],
      _date = json['date'] != null ? amplify_core.TemporalDateTime.fromString(json['date']) : null,
      _bucket = json['bucket'],
      _region = json['region'],
      _key = json['key'],
      _localPath = json['localPath'],
      _ownerId = json['ownerId'],
      _ownerName = json['ownerName'];
  
  Map<String, dynamic> toJson() => {
    'name': _name, 'date': _date?.format(), 'bucket': _bucket, 'region': _region, 'key': _key, 'localPath': _localPath, 'ownerId': _ownerId, 'ownerName': _ownerName
  };
  
  Map<String, Object?> toMap() => {
    'name': _name,
    'date': _date,
    'bucket': _bucket,
    'region': _region,
    'key': _key,
    'localPath': _localPath,
    'ownerId': _ownerId,
    'ownerName': _ownerName
  };

  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "S3Object";
    modelSchemaDefinition.pluralName = "S3Objects";
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'name',
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'date',
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'bucket',
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'region',
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'key',
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'localPath',
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'ownerId',
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'ownerName',
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
  });
}