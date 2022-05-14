import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'ambulance_record.g.dart';

abstract class AmbulanceRecord
    implements Built<AmbulanceRecord, AmbulanceRecordBuilder> {
  static Serializer<AmbulanceRecord> get serializer =>
      _$ambulanceRecordSerializer;

  @nullable
  String get namaTempat;

  @nullable
  int get nomorHP;

  @nullable
  String get alamat;

  @nullable
  LatLng get lokasi;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(AmbulanceRecordBuilder builder) => builder
    ..namaTempat = ''
    ..nomorHP = 0
    ..alamat = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ambulance');

  static Stream<AmbulanceRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<AmbulanceRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  AmbulanceRecord._();
  factory AmbulanceRecord([void Function(AmbulanceRecordBuilder) updates]) =
      _$AmbulanceRecord;

  static AmbulanceRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createAmbulanceRecordData({
  String namaTempat,
  int nomorHP,
  String alamat,
  LatLng lokasi,
}) =>
    serializers.toFirestore(
        AmbulanceRecord.serializer,
        AmbulanceRecord((a) => a
          ..namaTempat = namaTempat
          ..nomorHP = nomorHP
          ..alamat = alamat
          ..lokasi = lokasi));
