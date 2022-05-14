import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'rumah_sakit_record.g.dart';

abstract class RumahSakitRecord
    implements Built<RumahSakitRecord, RumahSakitRecordBuilder> {
  static Serializer<RumahSakitRecord> get serializer =>
      _$rumahSakitRecordSerializer;

  @nullable
  int get jumlahDarahAMin;

  @nullable
  int get jumlahDarahAPlus;

  @nullable
  String get nama;

  @nullable
  LatLng get lokasi;

  @nullable
  int get jumlahDarahBMin;

  @nullable
  int get jumlahDarahBPlus;

  @nullable
  int get jumlahDarahOMin;

  @nullable
  int get jumlahDarahOPlus;

  @nullable
  int get jumlahDarahABMin;

  @nullable
  int get jumlahDarahABPlus;

  @nullable
  int get totalKantongDarah;

  @nullable
  String get tipeKamar1;

  @nullable
  int get jumlahKamar1;

  @nullable
  String get alamat;

  @nullable
  String get photo;

  @nullable
  int get hargaKamar1;

  @nullable
  int get sisaKamar1;

  @nullable
  String get tipeKamar2;

  @nullable
  int get jumlahKamar2;

  @nullable
  int get hargaKamar2;

  @nullable
  int get sisaKamar2;

  @nullable
  String get deskripsi;

  @nullable
  String get tipeKamar3;

  @nullable
  int get jumlahKamar3;

  @nullable
  int get hargaKamar3;

  @nullable
  int get sisaKamar3;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(RumahSakitRecordBuilder builder) => builder
    ..jumlahDarahAMin = 0
    ..jumlahDarahAPlus = 0
    ..nama = ''
    ..jumlahDarahBMin = 0
    ..jumlahDarahBPlus = 0
    ..jumlahDarahOMin = 0
    ..jumlahDarahOPlus = 0
    ..jumlahDarahABMin = 0
    ..jumlahDarahABPlus = 0
    ..totalKantongDarah = 0
    ..tipeKamar1 = ''
    ..jumlahKamar1 = 0
    ..alamat = ''
    ..photo = ''
    ..hargaKamar1 = 0
    ..sisaKamar1 = 0
    ..tipeKamar2 = ''
    ..jumlahKamar2 = 0
    ..hargaKamar2 = 0
    ..sisaKamar2 = 0
    ..deskripsi = ''
    ..tipeKamar3 = ''
    ..jumlahKamar3 = 0
    ..hargaKamar3 = 0
    ..sisaKamar3 = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('rumahSakit');

  static Stream<RumahSakitRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<RumahSakitRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  RumahSakitRecord._();
  factory RumahSakitRecord([void Function(RumahSakitRecordBuilder) updates]) =
      _$RumahSakitRecord;

  static RumahSakitRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createRumahSakitRecordData({
  int jumlahDarahAMin,
  int jumlahDarahAPlus,
  String nama,
  LatLng lokasi,
  int jumlahDarahBMin,
  int jumlahDarahBPlus,
  int jumlahDarahOMin,
  int jumlahDarahOPlus,
  int jumlahDarahABMin,
  int jumlahDarahABPlus,
  int totalKantongDarah,
  String tipeKamar1,
  int jumlahKamar1,
  String alamat,
  String photo,
  int hargaKamar1,
  int sisaKamar1,
  String tipeKamar2,
  int jumlahKamar2,
  int hargaKamar2,
  int sisaKamar2,
  String deskripsi,
  String tipeKamar3,
  int jumlahKamar3,
  int hargaKamar3,
  int sisaKamar3,
}) =>
    serializers.toFirestore(
        RumahSakitRecord.serializer,
        RumahSakitRecord((r) => r
          ..jumlahDarahAMin = jumlahDarahAMin
          ..jumlahDarahAPlus = jumlahDarahAPlus
          ..nama = nama
          ..lokasi = lokasi
          ..jumlahDarahBMin = jumlahDarahBMin
          ..jumlahDarahBPlus = jumlahDarahBPlus
          ..jumlahDarahOMin = jumlahDarahOMin
          ..jumlahDarahOPlus = jumlahDarahOPlus
          ..jumlahDarahABMin = jumlahDarahABMin
          ..jumlahDarahABPlus = jumlahDarahABPlus
          ..totalKantongDarah = totalKantongDarah
          ..tipeKamar1 = tipeKamar1
          ..jumlahKamar1 = jumlahKamar1
          ..alamat = alamat
          ..photo = photo
          ..hargaKamar1 = hargaKamar1
          ..sisaKamar1 = sisaKamar1
          ..tipeKamar2 = tipeKamar2
          ..jumlahKamar2 = jumlahKamar2
          ..hargaKamar2 = hargaKamar2
          ..sisaKamar2 = sisaKamar2
          ..deskripsi = deskripsi
          ..tipeKamar3 = tipeKamar3
          ..jumlahKamar3 = jumlahKamar3
          ..hargaKamar3 = hargaKamar3
          ..sisaKamar3 = sisaKamar3));
