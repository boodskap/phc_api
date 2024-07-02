// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';
import 'dart:convert';

import 'package:chopper/chopper.dart';

import 'client_mapping.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:http/http.dart' show MultipartFile;
import 'package:chopper/chopper.dart' as chopper;

part 'phc.swagger.chopper.dart';
part 'phc.swagger.g.dart';

// **************************************************************************
// SwaggerChopperGenerator
// **************************************************************************

@ChopperApi()
abstract class Phc extends ChopperService {
  static Phc create({
    ChopperClient? client,
    http.Client? httpClient,
    Authenticator? authenticator,
    Converter? converter,
    Uri? baseUrl,
    Iterable<dynamic>? interceptors,
  }) {
    if (client != null) {
      return _$Phc(client);
    }

    final newClient = ChopperClient(
        services: [_$Phc()],
        converter: converter ?? $JsonSerializableConverter(),
        interceptors: interceptors ?? [],
        client: httpClient,
        authenticator: authenticator,
        baseUrl: baseUrl ??
            Uri.parse('http://au.boodskap.io/api/micro2/service/call/phc'));
    return _$Phc(newClient);
  }

  ///Cleanup entire data
  ///@param body
  Future<chopper.Response<VaccineArrayRes>> listVaccines({
    required ListReq? body,
    dynamic token,
  }) {
    generatedMapping.putIfAbsent(ListReq, () => ListReq.fromJsonFactory);
    generatedMapping.putIfAbsent(
        VaccineArrayRes, () => VaccineArrayRes.fromJsonFactory);

    return _listVaccines(body: body, token: token?.toString());
  }

  ///Cleanup entire data
  ///@param body
  @Post(path: '/DemoEntity/post/list')
  Future<chopper.Response<VaccineArrayRes>> _listVaccines({
    @Body() required ListReq? body,
    @Header('TOKEN') String? token,
  });

  ///Cleanup entire data
  ///@param vid
  ///@param qid
  Future<chopper.Response<VaccineArrayRes>> getVaccines({
    String? vid,
    required String? qid,
    dynamic token,
  }) {
    generatedMapping.putIfAbsent(
        VaccineArrayRes, () => VaccineArrayRes.fromJsonFactory);

    return _getVaccines(
        vid: vid?.toString(), qid: qid, token: token?.toString());
  }

  ///Cleanup entire data
  ///@param vid
  ///@param qid
  @Get(path: '/DemoEntity/get/get')
  Future<chopper.Response<VaccineArrayRes>> _getVaccines({
    @Header('vid') String? vid,
    @Query('qid') required String? qid,
    @Header('TOKEN') String? token,
  });

  ///Cleanup entire data
  ///@param vid
  ///@param qid
  Future<chopper.Response<VaccineArrayRes>> deleteVaccines({
    String? vid,
    required String? qid,
    dynamic token,
  }) {
    generatedMapping.putIfAbsent(
        VaccineArrayRes, () => VaccineArrayRes.fromJsonFactory);

    return _deleteVaccines(
        vid: vid?.toString(), qid: qid, token: token?.toString());
  }

  ///Cleanup entire data
  ///@param vid
  ///@param qid
  @Delete(path: '/DemoEntity/del/delete_vaccines')
  Future<chopper.Response<VaccineArrayRes>> _deleteVaccines({
    @Header('vid') String? vid,
    @Query('qid') required String? qid,
    @Header('TOKEN') String? token,
  });
}

@JsonSerializable(explicitToJson: true)
class BaseResponse {
  const BaseResponse({
    required this.ok,
    this.msg,
    this.trace,
  });

  factory BaseResponse.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseFromJson(json);

  static const toJsonFactory = _$BaseResponseToJson;
  Map<String, dynamic> toJson() => _$BaseResponseToJson(this);

  @JsonKey(name: 'ok', includeIfNull: false)
  final bool ok;
  @JsonKey(name: 'msg', includeIfNull: false, defaultValue: '')
  final String? msg;
  @JsonKey(name: 'trace', includeIfNull: false, defaultValue: '')
  final String? trace;
  static const fromJsonFactory = _$BaseResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BaseResponse &&
            (identical(other.ok, ok) ||
                const DeepCollectionEquality().equals(other.ok, ok)) &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)) &&
            (identical(other.trace, trace) ||
                const DeepCollectionEquality().equals(other.trace, trace)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(ok) ^
      const DeepCollectionEquality().hash(msg) ^
      const DeepCollectionEquality().hash(trace) ^
      runtimeType.hashCode;
}

extension $BaseResponseExtension on BaseResponse {
  BaseResponse copyWith({bool? ok, String? msg, String? trace}) {
    return BaseResponse(
        ok: ok ?? this.ok, msg: msg ?? this.msg, trace: trace ?? this.trace);
  }

  BaseResponse copyWithWrapped(
      {Wrapped<bool>? ok, Wrapped<String?>? msg, Wrapped<String?>? trace}) {
    return BaseResponse(
        ok: (ok != null ? ok.value : this.ok),
        msg: (msg != null ? msg.value : this.msg),
        trace: (trace != null ? trace.value : this.trace));
  }
}

@JsonSerializable(explicitToJson: true)
class ListReq {
  const ListReq({
    required this.page,
    required this.size,
  });

  factory ListReq.fromJson(Map<String, dynamic> json) =>
      _$ListReqFromJson(json);

  static const toJsonFactory = _$ListReqToJson;
  Map<String, dynamic> toJson() => _$ListReqToJson(this);

  @JsonKey(name: 'page', includeIfNull: false)
  final int page;
  @JsonKey(name: 'size', includeIfNull: false)
  final int size;
  static const fromJsonFactory = _$ListReqFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ListReq &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.size, size) ||
                const DeepCollectionEquality().equals(other.size, size)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(size) ^
      runtimeType.hashCode;
}

extension $ListReqExtension on ListReq {
  ListReq copyWith({int? page, int? size}) {
    return ListReq(page: page ?? this.page, size: size ?? this.size);
  }

  ListReq copyWithWrapped({Wrapped<int>? page, Wrapped<int>? size}) {
    return ListReq(
        page: (page != null ? page.value : this.page),
        size: (size != null ? size.value : this.size));
  }
}

@JsonSerializable(explicitToJson: true)
class ListRes {
  const ListRes({
    required this.page,
    required this.size,
    required this.total,
  });

  factory ListRes.fromJson(Map<String, dynamic> json) =>
      _$ListResFromJson(json);

  static const toJsonFactory = _$ListResToJson;
  Map<String, dynamic> toJson() => _$ListResToJson(this);

  @JsonKey(name: 'page', includeIfNull: false)
  final int page;
  @JsonKey(name: 'size', includeIfNull: false)
  final int size;
  @JsonKey(name: 'total', includeIfNull: false)
  final int total;
  static const fromJsonFactory = _$ListResFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ListRes &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.size, size) ||
                const DeepCollectionEquality().equals(other.size, size)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(size) ^
      const DeepCollectionEquality().hash(total) ^
      runtimeType.hashCode;
}

extension $ListResExtension on ListRes {
  ListRes copyWith({int? page, int? size, int? total}) {
    return ListRes(
        page: page ?? this.page,
        size: size ?? this.size,
        total: total ?? this.total);
  }

  ListRes copyWithWrapped(
      {Wrapped<int>? page, Wrapped<int>? size, Wrapped<int>? total}) {
    return ListRes(
        page: (page != null ? page.value : this.page),
        size: (size != null ? size.value : this.size),
        total: (total != null ? total.value : this.total));
  }
}

@JsonSerializable(explicitToJson: true)
class Vaccine {
  const Vaccine({
    required this.name,
    required this.type,
  });

  factory Vaccine.fromJson(Map<String, dynamic> json) =>
      _$VaccineFromJson(json);

  static const toJsonFactory = _$VaccineToJson;
  Map<String, dynamic> toJson() => _$VaccineToJson(this);

  @JsonKey(name: 'name', includeIfNull: false, defaultValue: '')
  final String name;
  @JsonKey(name: 'type', includeIfNull: false)
  final int type;
  static const fromJsonFactory = _$VaccineFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Vaccine &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(type) ^
      runtimeType.hashCode;
}

extension $VaccineExtension on Vaccine {
  Vaccine copyWith({String? name, int? type}) {
    return Vaccine(name: name ?? this.name, type: type ?? this.type);
  }

  Vaccine copyWithWrapped({Wrapped<String>? name, Wrapped<int>? type}) {
    return Vaccine(
        name: (name != null ? name.value : this.name),
        type: (type != null ? type.value : this.type));
  }
}

@JsonSerializable(explicitToJson: true)
class VaccineArray {
  const VaccineArray({
    this.values,
  });

  factory VaccineArray.fromJson(Map<String, dynamic> json) =>
      _$VaccineArrayFromJson(json);

  static const toJsonFactory = _$VaccineArrayToJson;
  Map<String, dynamic> toJson() => _$VaccineArrayToJson(this);

  @JsonKey(name: 'values', includeIfNull: false, defaultValue: <Vaccine>[])
  final List<Vaccine>? values;
  static const fromJsonFactory = _$VaccineArrayFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is VaccineArray &&
            (identical(other.values, values) ||
                const DeepCollectionEquality().equals(other.values, values)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(values) ^ runtimeType.hashCode;
}

extension $VaccineArrayExtension on VaccineArray {
  VaccineArray copyWith({List<Vaccine>? values}) {
    return VaccineArray(values: values ?? this.values);
  }

  VaccineArray copyWithWrapped({Wrapped<List<Vaccine>?>? values}) {
    return VaccineArray(values: (values != null ? values.value : this.values));
  }
}

@JsonSerializable(explicitToJson: true)
class VaccineArrayRes {
  const VaccineArrayRes({
    required this.ok,
    this.msg,
    this.trace,
    required this.page,
    required this.size,
    required this.total,
    this.values,
  });

  factory VaccineArrayRes.fromJson(Map<String, dynamic> json) =>
      _$VaccineArrayResFromJson(json);

  static const toJsonFactory = _$VaccineArrayResToJson;
  Map<String, dynamic> toJson() => _$VaccineArrayResToJson(this);

  @JsonKey(name: 'ok', includeIfNull: false)
  final bool ok;
  @JsonKey(name: 'msg', includeIfNull: false, defaultValue: '')
  final String? msg;
  @JsonKey(name: 'trace', includeIfNull: false, defaultValue: '')
  final String? trace;
  @JsonKey(name: 'page', includeIfNull: false)
  final int page;
  @JsonKey(name: 'size', includeIfNull: false)
  final int size;
  @JsonKey(name: 'total', includeIfNull: false)
  final int total;
  @JsonKey(name: 'values', includeIfNull: false, defaultValue: <Vaccine>[])
  final List<Vaccine>? values;
  static const fromJsonFactory = _$VaccineArrayResFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is VaccineArrayRes &&
            (identical(other.ok, ok) ||
                const DeepCollectionEquality().equals(other.ok, ok)) &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)) &&
            (identical(other.trace, trace) ||
                const DeepCollectionEquality().equals(other.trace, trace)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.size, size) ||
                const DeepCollectionEquality().equals(other.size, size)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)) &&
            (identical(other.values, values) ||
                const DeepCollectionEquality().equals(other.values, values)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(ok) ^
      const DeepCollectionEquality().hash(msg) ^
      const DeepCollectionEquality().hash(trace) ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(size) ^
      const DeepCollectionEquality().hash(total) ^
      const DeepCollectionEquality().hash(values) ^
      runtimeType.hashCode;
}

extension $VaccineArrayResExtension on VaccineArrayRes {
  VaccineArrayRes copyWith(
      {bool? ok,
      String? msg,
      String? trace,
      int? page,
      int? size,
      int? total,
      List<Vaccine>? values}) {
    return VaccineArrayRes(
        ok: ok ?? this.ok,
        msg: msg ?? this.msg,
        trace: trace ?? this.trace,
        page: page ?? this.page,
        size: size ?? this.size,
        total: total ?? this.total,
        values: values ?? this.values);
  }

  VaccineArrayRes copyWithWrapped(
      {Wrapped<bool>? ok,
      Wrapped<String?>? msg,
      Wrapped<String?>? trace,
      Wrapped<int>? page,
      Wrapped<int>? size,
      Wrapped<int>? total,
      Wrapped<List<Vaccine>?>? values}) {
    return VaccineArrayRes(
        ok: (ok != null ? ok.value : this.ok),
        msg: (msg != null ? msg.value : this.msg),
        trace: (trace != null ? trace.value : this.trace),
        page: (page != null ? page.value : this.page),
        size: (size != null ? size.value : this.size),
        total: (total != null ? total.value : this.total),
        values: (values != null ? values.value : this.values));
  }
}

typedef $JsonFactory<T> = T Function(Map<String, dynamic> json);

class $CustomJsonDecoder {
  $CustomJsonDecoder(this.factories);

  final Map<Type, $JsonFactory> factories;

  dynamic decode<T>(dynamic entity) {
    if (entity is Iterable) {
      return _decodeList<T>(entity);
    }

    if (entity is T) {
      return entity;
    }

    if (isTypeOf<T, Map>()) {
      return entity;
    }

    if (isTypeOf<T, Iterable>()) {
      return entity;
    }

    if (entity is Map<String, dynamic>) {
      return _decodeMap<T>(entity);
    }

    return entity;
  }

  T _decodeMap<T>(Map<String, dynamic> values) {
    final jsonFactory = factories[T];
    if (jsonFactory == null || jsonFactory is! $JsonFactory<T>) {
      return throw "Could not find factory for type $T. Is '$T: $T.fromJsonFactory' included in the CustomJsonDecoder instance creation in bootstrapper.dart?";
    }

    return jsonFactory(values);
  }

  List<T> _decodeList<T>(Iterable values) =>
      values.where((v) => v != null).map<T>((v) => decode<T>(v) as T).toList();
}

class $JsonSerializableConverter extends chopper.JsonConverter {
  @override
  FutureOr<chopper.Response<ResultType>> convertResponse<ResultType, Item>(
      chopper.Response response) async {
    if (response.bodyString.isEmpty) {
      // In rare cases, when let's say 204 (no content) is returned -
      // we cannot decode the missing json with the result type specified
      return chopper.Response(response.base, null, error: response.error);
    }

    if (ResultType == String) {
      return response.copyWith();
    }

    if (ResultType == DateTime) {
      return response.copyWith(
          body: DateTime.parse((response.body as String).replaceAll('"', ''))
              as ResultType);
    }

    final jsonRes = await super.convertResponse(response);
    return jsonRes.copyWith<ResultType>(
        body: $jsonDecoder.decode<Item>(jsonRes.body) as ResultType);
  }
}

final $jsonDecoder = $CustomJsonDecoder(generatedMapping);

// ignore: unused_element
String? _dateToJson(DateTime? date) {
  if (date == null) {
    return null;
  }

  final year = date.year.toString();
  final month = date.month < 10 ? '0${date.month}' : date.month.toString();
  final day = date.day < 10 ? '0${date.day}' : date.day.toString();

  return '$year-$month-$day';
}

class Wrapped<T> {
  final T value;
  const Wrapped.value(this.value);
}
