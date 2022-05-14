import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'users_record.g.dart';

abstract class UsersRecord implements Built<UsersRecord, UsersRecordBuilder> {
  static Serializer<UsersRecord> get serializer => _$usersRecordSerializer;

  @nullable
  String get email;

  @nullable
  String get uid;

  @nullable
  @BuiltValueField(wireName: 'created_time')
  DateTime get createdTime;

  @nullable
  String get nama;

  @nullable
  int get nomorBPJS;

  @nullable
  int get nomorHP;

  @nullable
  String get asalKota;

  @nullable
  @BuiltValueField(wireName: 'display_name')
  String get displayName;

  @nullable
  @BuiltValueField(wireName: 'photo_url')
  String get photoUrl;

  @nullable
  @BuiltValueField(wireName: 'phone_number')
  String get phoneNumber;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(UsersRecordBuilder builder) => builder
    ..email = ''
    ..uid = ''
    ..nama = ''
    ..nomorBPJS = 0
    ..nomorHP = 0
    ..asalKota = ''
    ..displayName = ''
    ..photoUrl = ''
    ..phoneNumber = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  UsersRecord._();
  factory UsersRecord([void Function(UsersRecordBuilder) updates]) =
      _$UsersRecord;

  static UsersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createUsersRecordData({
  String email,
  String uid,
  DateTime createdTime,
  String nama,
  int nomorBPJS,
  int nomorHP,
  String asalKota,
  String displayName,
  String photoUrl,
  String phoneNumber,
}) =>
    serializers.toFirestore(
        UsersRecord.serializer,
        UsersRecord((u) => u
          ..email = email
          ..uid = uid
          ..createdTime = createdTime
          ..nama = nama
          ..nomorBPJS = nomorBPJS
          ..nomorHP = nomorHP
          ..asalKota = asalKota
          ..displayName = displayName
          ..photoUrl = photoUrl
          ..phoneNumber = phoneNumber));
