// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phc.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponse _$BaseResponseFromJson(Map<String, dynamic> json) => BaseResponse(
      ok: json['ok'] as bool,
      msg: json['msg'] as String? ?? '',
      trace: json['trace'] as String? ?? '',
    );

Map<String, dynamic> _$BaseResponseToJson(BaseResponse instance) {
  final val = <String, dynamic>{
    'ok': instance.ok,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('msg', instance.msg);
  writeNotNull('trace', instance.trace);
  return val;
}

ListReq _$ListReqFromJson(Map<String, dynamic> json) => ListReq(
      page: json['page'] as int,
      size: json['size'] as int,
    );

Map<String, dynamic> _$ListReqToJson(ListReq instance) => <String, dynamic>{
      'page': instance.page,
      'size': instance.size,
    };

ListRes _$ListResFromJson(Map<String, dynamic> json) => ListRes(
      page: json['page'] as int,
      size: json['size'] as int,
      total: json['total'] as int,
    );

Map<String, dynamic> _$ListResToJson(ListRes instance) => <String, dynamic>{
      'page': instance.page,
      'size': instance.size,
      'total': instance.total,
    };

Vaccine _$VaccineFromJson(Map<String, dynamic> json) => Vaccine(
      name: json['name'] as String? ?? '',
      type: json['type'] as int,
    );

Map<String, dynamic> _$VaccineToJson(Vaccine instance) => <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
    };

VaccineArray _$VaccineArrayFromJson(Map<String, dynamic> json) => VaccineArray(
      values: (json['values'] as List<dynamic>?)
              ?.map((e) => Vaccine.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$VaccineArrayToJson(VaccineArray instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('values', instance.values?.map((e) => e.toJson()).toList());
  return val;
}

VaccineArrayRes _$VaccineArrayResFromJson(Map<String, dynamic> json) =>
    VaccineArrayRes(
      ok: json['ok'] as bool,
      msg: json['msg'] as String? ?? '',
      trace: json['trace'] as String? ?? '',
      page: json['page'] as int,
      size: json['size'] as int,
      total: json['total'] as int,
      values: (json['values'] as List<dynamic>?)
              ?.map((e) => Vaccine.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$VaccineArrayResToJson(VaccineArrayRes instance) {
  final val = <String, dynamic>{
    'ok': instance.ok,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('msg', instance.msg);
  writeNotNull('trace', instance.trace);
  val['page'] = instance.page;
  val['size'] = instance.size;
  val['total'] = instance.total;
  writeNotNull('values', instance.values?.map((e) => e.toJson()).toList());
  return val;
}
