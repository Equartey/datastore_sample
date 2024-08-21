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
import 'package:collection/collection.dart';


/** This is an auto generated class representing the Item type in your schema. */
class Item extends amplify_core.Model {
  static const classType = const _ItemModelType();
  final String id;
  final String? _tenantId;
  final String? _locationId;
  final String? _location;
  final String? _group;
  final String? _groupId;
  final String? _parcel;
  final String? _parcelId;
  final String? _cattleLot;
  final String? _ck;
  final String? _ckt;
  final String? _aid;
  final String? _altaid;
  final String? _alias;
  final String? _name;
  final String? _description;
  final amplify_core.TemporalDate? _admissionDate;
  final String? _lastOwner;
  final double? _cost;
  final amplify_core.TemporalDate? _market;
  final double? _purchase;
  final String? _retag;
  final String? _letag;
  final String? _eid;
  final List<S3Object>? _images;
  final List<S3Object>? _documents;
  final String? _breed;
  final String? _color;
  final double? _sale;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => modelIdentifier.serializeAsString();
  
  ItemModelIdentifier get modelIdentifier {
    try {
      return ItemModelIdentifier(
        tenantId: _tenantId!,
        id: id
      );
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get tenantId {
    try {
      return _tenantId!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get locationId {
    try {
      return _locationId!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get location {
    try {
      return _location!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String? get group {
    return _group;
  }
  
  String? get groupId {
    return _groupId;
  }
  
  String? get parcel {
    return _parcel;
  }
  
  String? get parcelId {
    return _parcelId;
  }
  
  String? get cattleLot {
    return _cattleLot;
  }
  
  String get ck {
    try {
      return _ck!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String? get ckt {
    return _ckt;
  }
  
  String? get aid {
    return _aid;
  }
  
  String? get altaid {
    return _altaid;
  }
  
  String? get alias {
    return _alias;
  }
  
  String? get name {
    return _name;
  }
  
  String? get description {
    return _description;
  }
  
  amplify_core.TemporalDate? get admissionDate {
    return _admissionDate;
  }
  
  String? get lastOwner {
    return _lastOwner;
  }
  
  double? get cost {
    return _cost;
  }
  
  amplify_core.TemporalDate? get market {
    return _market;
  }
  
  double? get purchase {
    return _purchase;
  }
  
  String? get retag {
    return _retag;
  }
  
  String? get letag {
    return _letag;
  }
  
  String? get eid {
    return _eid;
  }
  
  List<S3Object>? get images {
    return _images;
  }
  
  List<S3Object>? get documents {
    return _documents;
  }
  
  String? get breed {
    return _breed;
  }
  
  String? get color {
    return _color;
  }
  
  double? get sale {
    return _sale;
  }
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const Item._internal({required this.id, required tenantId, required locationId, required location, group, groupId, parcel, parcelId, cattleLot, required ck, ckt, aid, altaid, alias, name, description, admissionDate, lastOwner, cost, market, purchase, retag, letag, eid, images, documents, breed, color, sale, createdAt, updatedAt}): _tenantId = tenantId, _locationId = locationId, _location = location, _group = group, _groupId = groupId, _parcel = parcel, _parcelId = parcelId, _cattleLot = cattleLot, _ck = ck, _ckt = ckt, _aid = aid, _altaid = altaid, _alias = alias, _name = name, _description = description, _admissionDate = admissionDate, _lastOwner = lastOwner, _cost = cost, _market = market, _purchase = purchase, _retag = retag, _letag = letag, _eid = eid, _images = images, _documents = documents, _breed = breed, _color = color, _sale = sale, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Item({String? id, required String tenantId, required String locationId, required String location, String? group, String? groupId, String? parcel, String? parcelId, String? cattleLot, required String ck, String? ckt, String? aid, String? altaid, String? alias, String? name, String? description, amplify_core.TemporalDate? admissionDate, String? lastOwner, double? cost, amplify_core.TemporalDate? market, double? purchase, String? retag, String? letag, String? eid, List<S3Object>? images, List<S3Object>? documents, String? breed, String? color, double? sale}) {
    return Item._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      tenantId: tenantId,
      locationId: locationId,
      location: location,
      group: group,
      groupId: groupId,
      parcel: parcel,
      parcelId: parcelId,
      cattleLot: cattleLot,
      ck: ck,
      ckt: ckt,
      aid: aid,
      altaid: altaid,
      alias: alias,
      name: name,
      description: description,
      admissionDate: admissionDate,
      lastOwner: lastOwner,
      cost: cost,
      market: market,
      purchase: purchase,
      retag: retag,
      letag: letag,
      eid: eid,
      images: images != null ? List<S3Object>.unmodifiable(images) : images,
      documents: documents != null ? List<S3Object>.unmodifiable(documents) : documents,
      breed: breed,
      color: color,
      sale: sale);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Item &&
      id == other.id &&
      _tenantId == other._tenantId &&
      _locationId == other._locationId &&
      _location == other._location &&
      _group == other._group &&
      _groupId == other._groupId &&
      _parcel == other._parcel &&
      _parcelId == other._parcelId &&
      _cattleLot == other._cattleLot &&
      _ck == other._ck &&
      _ckt == other._ckt &&
      _aid == other._aid &&
      _altaid == other._altaid &&
      _alias == other._alias &&
      _name == other._name &&
      _description == other._description &&
      _admissionDate == other._admissionDate &&
      _lastOwner == other._lastOwner &&
      _cost == other._cost &&
      _market == other._market &&
      _purchase == other._purchase &&
      _retag == other._retag &&
      _letag == other._letag &&
      _eid == other._eid &&
      DeepCollectionEquality().equals(_images, other._images) &&
      DeepCollectionEquality().equals(_documents, other._documents) &&
      _breed == other._breed &&
      _color == other._color &&
      _sale == other._sale;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Item {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("tenantId=" + "$_tenantId" + ", ");
    buffer.write("locationId=" + "$_locationId" + ", ");
    buffer.write("location=" + "$_location" + ", ");
    buffer.write("group=" + "$_group" + ", ");
    buffer.write("groupId=" + "$_groupId" + ", ");
    buffer.write("parcel=" + "$_parcel" + ", ");
    buffer.write("parcelId=" + "$_parcelId" + ", ");
    buffer.write("cattleLot=" + "$_cattleLot" + ", ");
    buffer.write("ck=" + "$_ck" + ", ");
    buffer.write("ckt=" + "$_ckt" + ", ");
    buffer.write("aid=" + "$_aid" + ", ");
    buffer.write("altaid=" + "$_altaid" + ", ");
    buffer.write("alias=" + "$_alias" + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write("description=" + "$_description" + ", ");
    buffer.write("admissionDate=" + (_admissionDate != null ? _admissionDate!.format() : "null") + ", ");
    buffer.write("lastOwner=" + "$_lastOwner" + ", ");
    buffer.write("cost=" + (_cost != null ? _cost!.toString() : "null") + ", ");
    buffer.write("market=" + (_market != null ? _market!.format() : "null") + ", ");
    buffer.write("purchase=" + (_purchase != null ? _purchase!.toString() : "null") + ", ");
    buffer.write("retag=" + "$_retag" + ", ");
    buffer.write("letag=" + "$_letag" + ", ");
    buffer.write("eid=" + "$_eid" + ", ");
    buffer.write("images=" + (_images != null ? _images!.toString() : "null") + ", ");
    buffer.write("documents=" + (_documents != null ? _documents!.toString() : "null") + ", ");
    buffer.write("breed=" + "$_breed" + ", ");
    buffer.write("color=" + "$_color" + ", ");
    buffer.write("sale=" + (_sale != null ? _sale!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Item copyWith({String? locationId, String? location, String? group, String? groupId, String? parcel, String? parcelId, String? cattleLot, String? ck, String? ckt, String? aid, String? altaid, String? alias, String? name, String? description, amplify_core.TemporalDate? admissionDate, String? lastOwner, double? cost, amplify_core.TemporalDate? market, double? purchase, String? retag, String? letag, String? eid, List<S3Object>? images, List<S3Object>? documents, String? breed, String? color, double? sale}) {
    return Item._internal(
      id: id,
      tenantId: tenantId,
      locationId: locationId ?? this.locationId,
      location: location ?? this.location,
      group: group ?? this.group,
      groupId: groupId ?? this.groupId,
      parcel: parcel ?? this.parcel,
      parcelId: parcelId ?? this.parcelId,
      cattleLot: cattleLot ?? this.cattleLot,
      ck: ck ?? this.ck,
      ckt: ckt ?? this.ckt,
      aid: aid ?? this.aid,
      altaid: altaid ?? this.altaid,
      alias: alias ?? this.alias,
      name: name ?? this.name,
      description: description ?? this.description,
      admissionDate: admissionDate ?? this.admissionDate,
      lastOwner: lastOwner ?? this.lastOwner,
      cost: cost ?? this.cost,
      market: market ?? this.market,
      purchase: purchase ?? this.purchase,
      retag: retag ?? this.retag,
      letag: letag ?? this.letag,
      eid: eid ?? this.eid,
      images: images ?? this.images,
      documents: documents ?? this.documents,
      breed: breed ?? this.breed,
      color: color ?? this.color,
      sale: sale ?? this.sale);
  }
  
  Item copyWithModelFieldValues({
    ModelFieldValue<String>? locationId,
    ModelFieldValue<String>? location,
    ModelFieldValue<String?>? group,
    ModelFieldValue<String?>? groupId,
    ModelFieldValue<String?>? parcel,
    ModelFieldValue<String?>? parcelId,
    ModelFieldValue<String?>? cattleLot,
    ModelFieldValue<String>? ck,
    ModelFieldValue<String?>? ckt,
    ModelFieldValue<String?>? aid,
    ModelFieldValue<String?>? altaid,
    ModelFieldValue<String?>? alias,
    ModelFieldValue<String?>? name,
    ModelFieldValue<String?>? description,
    ModelFieldValue<amplify_core.TemporalDate?>? admissionDate,
    ModelFieldValue<String?>? lastOwner,
    ModelFieldValue<double?>? cost,
    ModelFieldValue<amplify_core.TemporalDate?>? market,
    ModelFieldValue<double?>? purchase,
    ModelFieldValue<String?>? retag,
    ModelFieldValue<String?>? letag,
    ModelFieldValue<String?>? eid,
    ModelFieldValue<List<S3Object>?>? images,
    ModelFieldValue<List<S3Object>?>? documents,
    ModelFieldValue<String?>? breed,
    ModelFieldValue<String?>? color,
    ModelFieldValue<double?>? sale
  }) {
    return Item._internal(
      id: id,
      tenantId: tenantId,
      locationId: locationId == null ? this.locationId : locationId.value,
      location: location == null ? this.location : location.value,
      group: group == null ? this.group : group.value,
      groupId: groupId == null ? this.groupId : groupId.value,
      parcel: parcel == null ? this.parcel : parcel.value,
      parcelId: parcelId == null ? this.parcelId : parcelId.value,
      cattleLot: cattleLot == null ? this.cattleLot : cattleLot.value,
      ck: ck == null ? this.ck : ck.value,
      ckt: ckt == null ? this.ckt : ckt.value,
      aid: aid == null ? this.aid : aid.value,
      altaid: altaid == null ? this.altaid : altaid.value,
      alias: alias == null ? this.alias : alias.value,
      name: name == null ? this.name : name.value,
      description: description == null ? this.description : description.value,
      admissionDate: admissionDate == null ? this.admissionDate : admissionDate.value,
      lastOwner: lastOwner == null ? this.lastOwner : lastOwner.value,
      cost: cost == null ? this.cost : cost.value,
      market: market == null ? this.market : market.value,
      purchase: purchase == null ? this.purchase : purchase.value,
      retag: retag == null ? this.retag : retag.value,
      letag: letag == null ? this.letag : letag.value,
      eid: eid == null ? this.eid : eid.value,
      images: images == null ? this.images : images.value,
      documents: documents == null ? this.documents : documents.value,
      breed: breed == null ? this.breed : breed.value,
      color: color == null ? this.color : color.value,
      sale: sale == null ? this.sale : sale.value
    );
  }
  
  Item.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _tenantId = json['tenantId'],
      _locationId = json['locationId'],
      _location = json['location'],
      _group = json['group'],
      _groupId = json['groupId'],
      _parcel = json['parcel'],
      _parcelId = json['parcelId'],
      _cattleLot = json['cattleLot'],
      _ck = json['ck'],
      _ckt = json['ckt'],
      _aid = json['aid'],
      _altaid = json['altaid'],
      _alias = json['alias'],
      _name = json['name'],
      _description = json['description'],
      _admissionDate = json['admissionDate'] != null ? amplify_core.TemporalDate.fromString(json['admissionDate']) : null,
      _lastOwner = json['lastOwner'],
      _cost = (json['cost'] as num?)?.toDouble(),
      _market = json['market'] != null ? amplify_core.TemporalDate.fromString(json['market']) : null,
      _purchase = (json['purchase'] as num?)?.toDouble(),
      _retag = json['retag'],
      _letag = json['letag'],
      _eid = json['eid'],
      _images = json['images'] is List
        ? (json['images'] as List)
          .where((e) => e != null)
          .map((e) => S3Object.fromJson(new Map<String, dynamic>.from(e['serializedData'] ?? e)))
          .toList()
        : null,
      _documents = json['documents'] is List
        ? (json['documents'] as List)
          .where((e) => e != null)
          .map((e) => S3Object.fromJson(new Map<String, dynamic>.from(e['serializedData'] ?? e)))
          .toList()
        : null,
      _breed = json['breed'],
      _color = json['color'],
      _sale = (json['sale'] as num?)?.toDouble(),
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'tenantId': _tenantId, 'locationId': _locationId, 'location': _location, 'group': _group, 'groupId': _groupId, 'parcel': _parcel, 'parcelId': _parcelId, 'cattleLot': _cattleLot, 'ck': _ck, 'ckt': _ckt, 'aid': _aid, 'altaid': _altaid, 'alias': _alias, 'name': _name, 'description': _description, 'admissionDate': _admissionDate?.format(), 'lastOwner': _lastOwner, 'cost': _cost, 'market': _market?.format(), 'purchase': _purchase, 'retag': _retag, 'letag': _letag, 'eid': _eid, 'images': _images?.map((S3Object? e) => e?.toJson()).toList(), 'documents': _documents?.map((S3Object? e) => e?.toJson()).toList(), 'breed': _breed, 'color': _color, 'sale': _sale, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'tenantId': _tenantId,
    'locationId': _locationId,
    'location': _location,
    'group': _group,
    'groupId': _groupId,
    'parcel': _parcel,
    'parcelId': _parcelId,
    'cattleLot': _cattleLot,
    'ck': _ck,
    'ckt': _ckt,
    'aid': _aid,
    'altaid': _altaid,
    'alias': _alias,
    'name': _name,
    'description': _description,
    'admissionDate': _admissionDate,
    'lastOwner': _lastOwner,
    'cost': _cost,
    'market': _market,
    'purchase': _purchase,
    'retag': _retag,
    'letag': _letag,
    'eid': _eid,
    'images': _images,
    'documents': _documents,
    'breed': _breed,
    'color': _color,
    'sale': _sale,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<ItemModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<ItemModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final TENANTID = amplify_core.QueryField(fieldName: "tenantId");
  static final LOCATIONID = amplify_core.QueryField(fieldName: "locationId");
  static final LOCATION = amplify_core.QueryField(fieldName: "location");
  static final GROUP = amplify_core.QueryField(fieldName: "group");
  static final GROUPID = amplify_core.QueryField(fieldName: "groupId");
  static final PARCEL = amplify_core.QueryField(fieldName: "parcel");
  static final PARCELID = amplify_core.QueryField(fieldName: "parcelId");
  static final CATTLELOT = amplify_core.QueryField(fieldName: "cattleLot");
  static final CK = amplify_core.QueryField(fieldName: "ck");
  static final CKT = amplify_core.QueryField(fieldName: "ckt");
  static final AID = amplify_core.QueryField(fieldName: "aid");
  static final ALTAID = amplify_core.QueryField(fieldName: "altaid");
  static final ALIAS = amplify_core.QueryField(fieldName: "alias");
  static final NAME = amplify_core.QueryField(fieldName: "name");
  static final DESCRIPTION = amplify_core.QueryField(fieldName: "description");
  static final ADMISSIONDATE = amplify_core.QueryField(fieldName: "admissionDate");
  static final LASTOWNER = amplify_core.QueryField(fieldName: "lastOwner");
  static final COST = amplify_core.QueryField(fieldName: "cost");
  static final MARKET = amplify_core.QueryField(fieldName: "market");
  static final PURCHASE = amplify_core.QueryField(fieldName: "purchase");
  static final RETAG = amplify_core.QueryField(fieldName: "retag");
  static final LETAG = amplify_core.QueryField(fieldName: "letag");
  static final EID = amplify_core.QueryField(fieldName: "eid");
  static final IMAGES = amplify_core.QueryField(fieldName: "images");
  static final DOCUMENTS = amplify_core.QueryField(fieldName: "documents");
  static final BREED = amplify_core.QueryField(fieldName: "breed");
  static final COLOR = amplify_core.QueryField(fieldName: "color");
  static final SALE = amplify_core.QueryField(fieldName: "sale");
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Item";
    modelSchemaDefinition.pluralName = "Items";
    
    modelSchemaDefinition.authRules = [
      amplify_core.AuthRule(
        authStrategy: amplify_core.AuthStrategy.GROUPS,
        groupClaim: "cognito:groups",
        groups: [ "Admin" ],
        provider: amplify_core.AuthRuleProvider.USERPOOLS,
        operations: const [
          amplify_core.ModelOperation.CREATE,
          amplify_core.ModelOperation.UPDATE,
          amplify_core.ModelOperation.READ,
          amplify_core.ModelOperation.DELETE
        ]),
      amplify_core.AuthRule(
        authStrategy: amplify_core.AuthStrategy.GROUPS,
        groupClaim: "cognito:groups",
        groups: [ "Api", "Operative" ],
        provider: amplify_core.AuthRuleProvider.USERPOOLS,
        operations: const [
          amplify_core.ModelOperation.CREATE,
          amplify_core.ModelOperation.UPDATE,
          amplify_core.ModelOperation.READ
        ]),
      amplify_core.AuthRule(
        authStrategy: amplify_core.AuthStrategy.GROUPS,
        groupClaim: "cognito:groups",
        groups: [ "Guest" ],
        provider: amplify_core.AuthRuleProvider.USERPOOLS,
        operations: const [
          amplify_core.ModelOperation.READ
        ])
    ];
    
    modelSchemaDefinition.indexes = [
      amplify_core.ModelIndex(fields: const ["tenantId", "id"], name: null),
      amplify_core.ModelIndex(fields: const ["locationId", "ck"], name: "itemsByLocationIdAndCk")
    ];
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Item.TENANTID,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Item.LOCATIONID,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Item.LOCATION,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Item.GROUP,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Item.GROUPID,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Item.PARCEL,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Item.PARCELID,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Item.CATTLELOT,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Item.CK,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Item.CKT,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Item.AID,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Item.ALTAID,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Item.ALIAS,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Item.NAME,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Item.DESCRIPTION,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Item.ADMISSIONDATE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.date)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Item.LASTOWNER,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Item.COST,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Item.MARKET,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.date)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Item.PURCHASE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Item.RETAG,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Item.LETAG,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Item.EID,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.embedded(
      fieldName: 'images',
      isRequired: false,
      isArray: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.embeddedCollection, ofCustomTypeName: 'S3Object')
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.embedded(
      fieldName: 'documents',
      isRequired: false,
      isArray: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.embeddedCollection, ofCustomTypeName: 'S3Object')
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Item.BREED,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Item.COLOR,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Item.SALE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.nonQueryField(
      fieldName: 'createdAt',
      isRequired: false,
      isReadOnly: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.nonQueryField(
      fieldName: 'updatedAt',
      isRequired: false,
      isReadOnly: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
  });
}

class _ItemModelType extends amplify_core.ModelType<Item> {
  const _ItemModelType();
  
  @override
  Item fromJson(Map<String, dynamic> jsonData) {
    return Item.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Item';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Item] in your schema.
 */
class ItemModelIdentifier implements amplify_core.ModelIdentifier<Item> {
  final String tenantId;
  final String id;

  /**
   * Create an instance of ItemModelIdentifier using [tenantId] the primary key.
   * And [id] the sort key.
   */
  const ItemModelIdentifier({
    required this.tenantId,
    required this.id});
  
  @override
  Map<String, dynamic> serializeAsMap() => (<String, dynamic>{
    'tenantId': tenantId,
    'id': id
  });
  
  @override
  List<Map<String, dynamic>> serializeAsList() => serializeAsMap()
    .entries
    .map((entry) => (<String, dynamic>{ entry.key: entry.value }))
    .toList();
  
  @override
  String serializeAsString() => serializeAsMap().values.join('#');
  
  @override
  String toString() => 'ItemModelIdentifier(tenantId: $tenantId, id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is ItemModelIdentifier &&
      tenantId == other.tenantId &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    tenantId.hashCode ^
    id.hashCode;
}