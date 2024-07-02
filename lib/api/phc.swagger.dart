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
import 'phc.enums.swagger.dart' as enums;
export 'phc.enums.swagger.dart';

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

  ///Get User Profile
  Future<chopper.Response<ProfileRes>> getProfile({dynamic token}) {
    generatedMapping.putIfAbsent(ProfileRes, () => ProfileRes.fromJsonFactory);

    return _getProfile(token: token?.toString());
  }

  ///Get User Profile
  @Get(path: '/Profile/get/getprofile')
  Future<chopper.Response<ProfileRes>> _getProfile(
      {@Header('TOKEN') String? token});

  ///Set User Profile
  ///@param body
  Future<chopper.Response<ProfileRes>> setProfile({
    required Profile? body,
    dynamic token,
  }) {
    generatedMapping.putIfAbsent(Profile, () => Profile.fromJsonFactory);
    generatedMapping.putIfAbsent(ProfileRes, () => ProfileRes.fromJsonFactory);

    return _setProfile(body: body, token: token?.toString());
  }

  ///Set User Profile
  ///@param body
  @Post(path: '/Profile/post/setprofile')
  Future<chopper.Response<ProfileRes>> _setProfile({
    @Body() required Profile? body,
    @Header('TOKEN') String? token,
  });

  ///Entities Count
  ///@param tshint
  ///@param begints Required if tshint is RANGE (yyyy-MM-ddTHH:mm:ss)
  ///@param endts Required if tshint is RANGE (yyyy-MM-ddTHH:mm:ss)
  Future<chopper.Response<EntitiesCountRes>> entitiesCount({
    required enums.DashboardGetEcountGetTshint? tshint,
    String? begints,
    String? endts,
    dynamic token,
  }) {
    generatedMapping.putIfAbsent(
        EntitiesCountRes, () => EntitiesCountRes.fromJsonFactory);

    return _entitiesCount(
        tshint: tshint?.value?.toString(),
        begints: begints,
        endts: endts,
        token: token?.toString());
  }

  ///Entities Count
  ///@param tshint
  ///@param begints Required if tshint is RANGE (yyyy-MM-ddTHH:mm:ss)
  ///@param endts Required if tshint is RANGE (yyyy-MM-ddTHH:mm:ss)
  @Get(path: '/Dashboard/get/ecount')
  Future<chopper.Response<EntitiesCountRes>> _entitiesCount({
    @Query('tshint') required String? tshint,
    @Query('begints') String? begints,
    @Query('endts') String? endts,
    @Header('TOKEN') String? token,
  });

  ///Patient Statistics
  ///@param tshint
  ///@param begints Required if tshint is RANGE (yyyy-MM-ddTHH:mm:ss)
  ///@param endts Required if tshint is RANGE (yyyy-MM-ddTHH:mm:ss)
  Future<chopper.Response<StatisticsArrayRes>> statistics({
    required enums.DashboardGetStatisticsGetTshint? tshint,
    String? begints,
    String? endts,
    dynamic token,
  }) {
    generatedMapping.putIfAbsent(
        StatisticsArrayRes, () => StatisticsArrayRes.fromJsonFactory);

    return _statistics(
        tshint: tshint?.value?.toString(),
        begints: begints,
        endts: endts,
        token: token?.toString());
  }

  ///Patient Statistics
  ///@param tshint
  ///@param begints Required if tshint is RANGE (yyyy-MM-ddTHH:mm:ss)
  ///@param endts Required if tshint is RANGE (yyyy-MM-ddTHH:mm:ss)
  @Get(path: '/Dashboard/get/statistics')
  Future<chopper.Response<StatisticsArrayRes>> _statistics({
    @Query('tshint') required String? tshint,
    @Query('begints') String? begints,
    @Query('endts') String? endts,
    @Header('TOKEN') String? token,
  });

  ///Appointments Details
  Future<chopper.Response<AppointmentArrayRes>> appointments({dynamic token}) {
    generatedMapping.putIfAbsent(
        AppointmentArrayRes, () => AppointmentArrayRes.fromJsonFactory);

    return _appointments(token: token?.toString());
  }

  ///Appointments Details
  @Get(path: '/Dashboard/get/appointments')
  Future<chopper.Response<AppointmentArrayRes>> _appointments(
      {@Header('TOKEN') String? token});

  ///Create Patient
  ///@param body
  Future<chopper.Response<PatientRes>> createPatient({
    required Patient? body,
    dynamic token,
  }) {
    generatedMapping.putIfAbsent(Patient, () => Patient.fromJsonFactory);
    generatedMapping.putIfAbsent(PatientRes, () => PatientRes.fromJsonFactory);

    return _createPatient(body: body, token: token?.toString());
  }

  ///Create Patient
  ///@param body
  @Post(path: '/Patient/post/create')
  Future<chopper.Response<PatientRes>> _createPatient({
    @Body() required Patient? body,
    @Header('TOKEN') String? token,
  });

  ///Update Patient
  ///@param id
  ///@param body
  Future<chopper.Response<PatientRes>> updatePatient({
    required String? id,
    required Patient? body,
    dynamic token,
  }) {
    generatedMapping.putIfAbsent(Patient, () => Patient.fromJsonFactory);
    generatedMapping.putIfAbsent(PatientRes, () => PatientRes.fromJsonFactory);

    return _updatePatient(id: id, body: body, token: token?.toString());
  }

  ///Update Patient
  ///@param id
  ///@param body
  @Post(path: '/Patient/post/update')
  Future<chopper.Response<PatientRes>> _updatePatient({
    @Query('id') required String? id,
    @Body() required Patient? body,
    @Header('TOKEN') String? token,
  });

  ///List Patient
  ///@param body
  Future<chopper.Response<PatientArrayRes>> listPatient({
    required ListReq? body,
    dynamic token,
  }) {
    generatedMapping.putIfAbsent(ListReq, () => ListReq.fromJsonFactory);
    generatedMapping.putIfAbsent(
        PatientArrayRes, () => PatientArrayRes.fromJsonFactory);

    return _listPatient(body: body, token: token?.toString());
  }

  ///List Patient
  ///@param body
  @Post(path: '/Patient/post/list')
  Future<chopper.Response<PatientArrayRes>> _listPatient({
    @Body() required ListReq? body,
    @Header('TOKEN') String? token,
  });

  ///Get Patient
  ///@param id
  Future<chopper.Response<PatientRes>> getPatient({
    required String? id,
    dynamic token,
  }) {
    generatedMapping.putIfAbsent(PatientRes, () => PatientRes.fromJsonFactory);

    return _getPatient(id: id, token: token?.toString());
  }

  ///Get Patient
  ///@param id
  @Get(path: '/Patient/get/get')
  Future<chopper.Response<PatientRes>> _getPatient({
    @Query('id') required String? id,
    @Header('TOKEN') String? token,
  });

  ///Delete Patient
  ///@param id
  Future<chopper.Response<BaseResponse>> deletePatient({
    required String? id,
    dynamic token,
  }) {
    generatedMapping.putIfAbsent(
        BaseResponse, () => BaseResponse.fromJsonFactory);

    return _deletePatient(id: id, token: token?.toString());
  }

  ///Delete Patient
  ///@param id
  @Delete(path: '/Patient/del/delete')
  Future<chopper.Response<BaseResponse>> _deletePatient({
    @Query('id') required String? id,
    @Header('TOKEN') String? token,
  });

  ///Schedule Vaccine
  ///@param body
  Future<chopper.Response<ScheduleRes>> scheduleVaccine({
    required Schedule? body,
    dynamic token,
  }) {
    generatedMapping.putIfAbsent(Schedule, () => Schedule.fromJsonFactory);
    generatedMapping.putIfAbsent(
        ScheduleRes, () => ScheduleRes.fromJsonFactory);

    return _scheduleVaccine(body: body, token: token?.toString());
  }

  ///Schedule Vaccine
  ///@param body
  @Post(path: '/Patient/post/schedule')
  Future<chopper.Response<ScheduleRes>> _scheduleVaccine({
    @Body() required Schedule? body,
    @Header('TOKEN') String? token,
  });

  ///Get Vaccine Scheduler
  Future<chopper.Response<SchedulerRes>> getVaccineScheduler({dynamic token}) {
    generatedMapping.putIfAbsent(
        SchedulerRes, () => SchedulerRes.fromJsonFactory);

    return _getVaccineScheduler(token: token?.toString());
  }

  ///Get Vaccine Scheduler
  @Get(path: '/Patient/get/getscheduler')
  Future<chopper.Response<SchedulerRes>> _getVaccineScheduler(
      {@Header('TOKEN') String? token});

  ///Create Vaccine
  ///@param body
  Future<chopper.Response<VaccineRes>> createVaccine({
    required Vaccine? body,
    dynamic token,
  }) {
    generatedMapping.putIfAbsent(Vaccine, () => Vaccine.fromJsonFactory);
    generatedMapping.putIfAbsent(VaccineRes, () => VaccineRes.fromJsonFactory);

    return _createVaccine(body: body, token: token?.toString());
  }

  ///Create Vaccine
  ///@param body
  @Post(path: '/Vaccine/post/create')
  Future<chopper.Response<VaccineRes>> _createVaccine({
    @Body() required Vaccine? body,
    @Header('TOKEN') String? token,
  });

  ///Update Vaccine
  ///@param id
  ///@param body
  Future<chopper.Response<VaccineRes>> updateVaccine({
    required String? id,
    required Vaccine? body,
    dynamic token,
  }) {
    generatedMapping.putIfAbsent(Vaccine, () => Vaccine.fromJsonFactory);
    generatedMapping.putIfAbsent(VaccineRes, () => VaccineRes.fromJsonFactory);

    return _updateVaccine(id: id, body: body, token: token?.toString());
  }

  ///Update Vaccine
  ///@param id
  ///@param body
  @Post(path: '/Vaccine/post/update')
  Future<chopper.Response<VaccineRes>> _updateVaccine({
    @Query('id') required String? id,
    @Body() required Vaccine? body,
    @Header('TOKEN') String? token,
  });

  ///List Vaccines
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

  ///List Vaccines
  ///@param body
  @Post(path: '/Vaccine/post/list')
  Future<chopper.Response<VaccineArrayRes>> _listVaccines({
    @Body() required ListReq? body,
    @Header('TOKEN') String? token,
  });

  ///Get Vaccine
  ///@param id
  Future<chopper.Response<VaccineGetRes>> getVaccine({
    required String? id,
    dynamic token,
  }) {
    generatedMapping.putIfAbsent(
        VaccineGetRes, () => VaccineGetRes.fromJsonFactory);

    return _getVaccine(id: id, token: token?.toString());
  }

  ///Get Vaccine
  ///@param id
  @Get(path: '/Vaccine/get/get')
  Future<chopper.Response<VaccineGetRes>> _getVaccine({
    @Query('id') required String? id,
    @Header('TOKEN') String? token,
  });

  ///Delete Vaccine
  ///@param id
  Future<chopper.Response<BaseResponse>> deleteVaccine({
    required String? id,
    dynamic token,
  }) {
    generatedMapping.putIfAbsent(
        BaseResponse, () => BaseResponse.fromJsonFactory);

    return _deleteVaccine(id: id, token: token?.toString());
  }

  ///Delete Vaccine
  ///@param id
  @Delete(path: '/Vaccine/del/delete')
  Future<chopper.Response<BaseResponse>> _deleteVaccine({
    @Query('id') required String? id,
    @Header('TOKEN') String? token,
  });

  ///Create Medicine
  ///@param body
  Future<chopper.Response<MedicineRes>> createMedicine({
    required Medicine? body,
    dynamic token,
  }) {
    generatedMapping.putIfAbsent(Medicine, () => Medicine.fromJsonFactory);
    generatedMapping.putIfAbsent(
        MedicineRes, () => MedicineRes.fromJsonFactory);

    return _createMedicine(body: body, token: token?.toString());
  }

  ///Create Medicine
  ///@param body
  @Post(path: '/Medicine/post/create')
  Future<chopper.Response<MedicineRes>> _createMedicine({
    @Body() required Medicine? body,
    @Header('TOKEN') String? token,
  });

  ///Update Medicine
  ///@param id
  ///@param body
  Future<chopper.Response<MedicineRes>> updateMedicine({
    required String? id,
    required Medicine? body,
    dynamic token,
  }) {
    generatedMapping.putIfAbsent(Medicine, () => Medicine.fromJsonFactory);
    generatedMapping.putIfAbsent(
        MedicineRes, () => MedicineRes.fromJsonFactory);

    return _updateMedicine(id: id, body: body, token: token?.toString());
  }

  ///Update Medicine
  ///@param id
  ///@param body
  @Post(path: '/Medicine/post/update')
  Future<chopper.Response<MedicineRes>> _updateMedicine({
    @Query('id') required String? id,
    @Body() required Medicine? body,
    @Header('TOKEN') String? token,
  });

  ///List Medicine
  ///@param body
  Future<chopper.Response<MedicineArrayRes>> listMedicine({
    required ListReq? body,
    dynamic token,
  }) {
    generatedMapping.putIfAbsent(ListReq, () => ListReq.fromJsonFactory);
    generatedMapping.putIfAbsent(
        MedicineArrayRes, () => MedicineArrayRes.fromJsonFactory);

    return _listMedicine(body: body, token: token?.toString());
  }

  ///List Medicine
  ///@param body
  @Post(path: '/Medicine/post/list')
  Future<chopper.Response<MedicineArrayRes>> _listMedicine({
    @Body() required ListReq? body,
    @Header('TOKEN') String? token,
  });

  ///Get Medicine
  ///@param id
  Future<chopper.Response<MedicineGetRes>> getMedicine({
    required String? id,
    dynamic token,
  }) {
    generatedMapping.putIfAbsent(
        MedicineGetRes, () => MedicineGetRes.fromJsonFactory);

    return _getMedicine(id: id, token: token?.toString());
  }

  ///Get Medicine
  ///@param id
  @Get(path: '/Medicine/get/get')
  Future<chopper.Response<MedicineGetRes>> _getMedicine({
    @Query('id') required String? id,
    @Header('TOKEN') String? token,
  });

  ///Delete Medicine
  ///@param id
  Future<chopper.Response<BaseResponse>> deleteMedicine({
    required String? id,
    dynamic token,
  }) {
    generatedMapping.putIfAbsent(
        BaseResponse, () => BaseResponse.fromJsonFactory);

    return _deleteMedicine(id: id, token: token?.toString());
  }

  ///Delete Medicine
  ///@param id
  @Delete(path: '/Medicine/del/delete')
  Future<chopper.Response<BaseResponse>> _deleteMedicine({
    @Query('id') required String? id,
    @Header('TOKEN') String? token,
  });

  ///Create Equipment
  ///@param body
  Future<chopper.Response<EquipmentRes>> createEquipment({
    required Equipment? body,
    dynamic token,
  }) {
    generatedMapping.putIfAbsent(Equipment, () => Equipment.fromJsonFactory);
    generatedMapping.putIfAbsent(
        EquipmentRes, () => EquipmentRes.fromJsonFactory);

    return _createEquipment(body: body, token: token?.toString());
  }

  ///Create Equipment
  ///@param body
  @Post(path: '/Equipment/post/create')
  Future<chopper.Response<EquipmentRes>> _createEquipment({
    @Body() required Equipment? body,
    @Header('TOKEN') String? token,
  });

  ///Update Equipment
  ///@param id
  ///@param body
  Future<chopper.Response<EquipmentRes>> updateEquipment({
    required String? id,
    required Equipment? body,
    dynamic token,
  }) {
    generatedMapping.putIfAbsent(Equipment, () => Equipment.fromJsonFactory);
    generatedMapping.putIfAbsent(
        EquipmentRes, () => EquipmentRes.fromJsonFactory);

    return _updateEquipment(id: id, body: body, token: token?.toString());
  }

  ///Update Equipment
  ///@param id
  ///@param body
  @Post(path: '/Equipment/post/update')
  Future<chopper.Response<EquipmentRes>> _updateEquipment({
    @Query('id') required String? id,
    @Body() required Equipment? body,
    @Header('TOKEN') String? token,
  });

  ///List Equipment
  ///@param body
  Future<chopper.Response<EquipmentArrayRes>> listEquipment({
    required ListReq? body,
    dynamic token,
  }) {
    generatedMapping.putIfAbsent(ListReq, () => ListReq.fromJsonFactory);
    generatedMapping.putIfAbsent(
        EquipmentArrayRes, () => EquipmentArrayRes.fromJsonFactory);

    return _listEquipment(body: body, token: token?.toString());
  }

  ///List Equipment
  ///@param body
  @Post(path: '/Equipment/post/list')
  Future<chopper.Response<EquipmentArrayRes>> _listEquipment({
    @Body() required ListReq? body,
    @Header('TOKEN') String? token,
  });

  ///Get Equipment
  ///@param id
  Future<chopper.Response<EquipmentGetRes>> getEquipment({
    required String? id,
    dynamic token,
  }) {
    generatedMapping.putIfAbsent(
        EquipmentGetRes, () => EquipmentGetRes.fromJsonFactory);

    return _getEquipment(id: id, token: token?.toString());
  }

  ///Get Equipment
  ///@param id
  @Get(path: '/Equipment/get/get')
  Future<chopper.Response<EquipmentGetRes>> _getEquipment({
    @Query('id') required String? id,
    @Header('TOKEN') String? token,
  });

  ///Delete Equipment
  ///@param id
  Future<chopper.Response<BaseResponse>> deleteEquipment({
    required String? id,
    dynamic token,
  }) {
    generatedMapping.putIfAbsent(
        BaseResponse, () => BaseResponse.fromJsonFactory);

    return _deleteEquipment(id: id, token: token?.toString());
  }

  ///Delete Equipment
  ///@param id
  @Delete(path: '/Equipment/del/delete')
  Future<chopper.Response<BaseResponse>> _deleteEquipment({
    @Query('id') required String? id,
    @Header('TOKEN') String? token,
  });

  ///List Notification
  ///@param page
  ///@param size
  ///@param sort
  Future<chopper.Response<NotificationArrayRes>> listNotification({
    int? page,
    int? size,
    enums.NotificationGetListGetSort? sort,
    dynamic token,
  }) {
    generatedMapping.putIfAbsent(
        NotificationArrayRes, () => NotificationArrayRes.fromJsonFactory);

    return _listNotification(
        page: page,
        size: size,
        sort: sort?.value?.toString(),
        token: token?.toString());
  }

  ///List Notification
  ///@param page
  ///@param size
  ///@param sort
  @Get(path: '/Notification/get/list')
  Future<chopper.Response<NotificationArrayRes>> _listNotification({
    @Query('page') int? page,
    @Query('size') int? size,
    @Query('sort') String? sort,
    @Header('TOKEN') String? token,
  });

  ///Search Notification
  ///@param search
  ///@param page
  ///@param size
  Future<chopper.Response<NotificationArrayRes>> searchNotification({
    required String? search,
    int? page,
    int? size,
    dynamic token,
  }) {
    generatedMapping.putIfAbsent(
        NotificationArrayRes, () => NotificationArrayRes.fromJsonFactory);

    return _searchNotification(
        search: search, page: page, size: size, token: token?.toString());
  }

  ///Search Notification
  ///@param search
  ///@param page
  ///@param size
  @Get(path: '/Notification/get/search')
  Future<chopper.Response<NotificationArrayRes>> _searchNotification({
    @Query('search') required String? search,
    @Query('page') int? page,
    @Query('size') int? size,
    @Header('TOKEN') String? token,
  });

  ///Clean Up All Records
  Future<chopper.Response<BaseResponse>> cleanup({dynamic token}) {
    generatedMapping.putIfAbsent(
        BaseResponse, () => BaseResponse.fromJsonFactory);

    return _cleanup(token: token?.toString());
  }

  ///Clean Up All Records
  @Delete(path: '/Phc/del/cleanup')
  Future<chopper.Response<BaseResponse>> _cleanup(
      {@Header('TOKEN') String? token});
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
class TotalRes {
  const TotalRes({
    required this.availableCount,
    required this.shortageCount,
    required this.nonAvailableCount,
  });

  factory TotalRes.fromJson(Map<String, dynamic> json) =>
      _$TotalResFromJson(json);

  static const toJsonFactory = _$TotalResToJson;
  Map<String, dynamic> toJson() => _$TotalResToJson(this);

  @JsonKey(name: 'available_count', includeIfNull: false)
  final int availableCount;
  @JsonKey(name: 'shortage_count', includeIfNull: false)
  final int shortageCount;
  @JsonKey(name: 'non_available_count', includeIfNull: false)
  final int nonAvailableCount;
  static const fromJsonFactory = _$TotalResFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TotalRes &&
            (identical(other.availableCount, availableCount) ||
                const DeepCollectionEquality()
                    .equals(other.availableCount, availableCount)) &&
            (identical(other.shortageCount, shortageCount) ||
                const DeepCollectionEquality()
                    .equals(other.shortageCount, shortageCount)) &&
            (identical(other.nonAvailableCount, nonAvailableCount) ||
                const DeepCollectionEquality()
                    .equals(other.nonAvailableCount, nonAvailableCount)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(availableCount) ^
      const DeepCollectionEquality().hash(shortageCount) ^
      const DeepCollectionEquality().hash(nonAvailableCount) ^
      runtimeType.hashCode;
}

extension $TotalResExtension on TotalRes {
  TotalRes copyWith(
      {int? availableCount, int? shortageCount, int? nonAvailableCount}) {
    return TotalRes(
        availableCount: availableCount ?? this.availableCount,
        shortageCount: shortageCount ?? this.shortageCount,
        nonAvailableCount: nonAvailableCount ?? this.nonAvailableCount);
  }

  TotalRes copyWithWrapped(
      {Wrapped<int>? availableCount,
      Wrapped<int>? shortageCount,
      Wrapped<int>? nonAvailableCount}) {
    return TotalRes(
        availableCount: (availableCount != null
            ? availableCount.value
            : this.availableCount),
        shortageCount:
            (shortageCount != null ? shortageCount.value : this.shortageCount),
        nonAvailableCount: (nonAvailableCount != null
            ? nonAvailableCount.value
            : this.nonAvailableCount));
  }
}

@JsonSerializable(explicitToJson: true)
class PatientTotalRes {
  const PatientTotalRes({
    required this.maleCount,
    required this.femaleCount,
    required this.generalCount,
    required this.pregnantCount,
    required this.infantCount,
  });

  factory PatientTotalRes.fromJson(Map<String, dynamic> json) =>
      _$PatientTotalResFromJson(json);

  static const toJsonFactory = _$PatientTotalResToJson;
  Map<String, dynamic> toJson() => _$PatientTotalResToJson(this);

  @JsonKey(name: 'male_count', includeIfNull: false)
  final int maleCount;
  @JsonKey(name: 'female_count', includeIfNull: false)
  final int femaleCount;
  @JsonKey(name: 'general_count', includeIfNull: false)
  final int generalCount;
  @JsonKey(name: 'pregnant_count', includeIfNull: false)
  final int pregnantCount;
  @JsonKey(name: 'infant_count', includeIfNull: false)
  final int infantCount;
  static const fromJsonFactory = _$PatientTotalResFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PatientTotalRes &&
            (identical(other.maleCount, maleCount) ||
                const DeepCollectionEquality()
                    .equals(other.maleCount, maleCount)) &&
            (identical(other.femaleCount, femaleCount) ||
                const DeepCollectionEquality()
                    .equals(other.femaleCount, femaleCount)) &&
            (identical(other.generalCount, generalCount) ||
                const DeepCollectionEquality()
                    .equals(other.generalCount, generalCount)) &&
            (identical(other.pregnantCount, pregnantCount) ||
                const DeepCollectionEquality()
                    .equals(other.pregnantCount, pregnantCount)) &&
            (identical(other.infantCount, infantCount) ||
                const DeepCollectionEquality()
                    .equals(other.infantCount, infantCount)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(maleCount) ^
      const DeepCollectionEquality().hash(femaleCount) ^
      const DeepCollectionEquality().hash(generalCount) ^
      const DeepCollectionEquality().hash(pregnantCount) ^
      const DeepCollectionEquality().hash(infantCount) ^
      runtimeType.hashCode;
}

extension $PatientTotalResExtension on PatientTotalRes {
  PatientTotalRes copyWith(
      {int? maleCount,
      int? femaleCount,
      int? generalCount,
      int? pregnantCount,
      int? infantCount}) {
    return PatientTotalRes(
        maleCount: maleCount ?? this.maleCount,
        femaleCount: femaleCount ?? this.femaleCount,
        generalCount: generalCount ?? this.generalCount,
        pregnantCount: pregnantCount ?? this.pregnantCount,
        infantCount: infantCount ?? this.infantCount);
  }

  PatientTotalRes copyWithWrapped(
      {Wrapped<int>? maleCount,
      Wrapped<int>? femaleCount,
      Wrapped<int>? generalCount,
      Wrapped<int>? pregnantCount,
      Wrapped<int>? infantCount}) {
    return PatientTotalRes(
        maleCount: (maleCount != null ? maleCount.value : this.maleCount),
        femaleCount:
            (femaleCount != null ? femaleCount.value : this.femaleCount),
        generalCount:
            (generalCount != null ? generalCount.value : this.generalCount),
        pregnantCount:
            (pregnantCount != null ? pregnantCount.value : this.pregnantCount),
        infantCount:
            (infantCount != null ? infantCount.value : this.infantCount));
  }
}

@JsonSerializable(explicitToJson: true)
class VaccineTotalRes {
  const VaccineTotalRes({
    required this.availableCount,
    required this.shortageCount,
    required this.nonAvailableCount,
  });

  factory VaccineTotalRes.fromJson(Map<String, dynamic> json) =>
      _$VaccineTotalResFromJson(json);

  static const toJsonFactory = _$VaccineTotalResToJson;
  Map<String, dynamic> toJson() => _$VaccineTotalResToJson(this);

  @JsonKey(name: 'available_count', includeIfNull: false)
  final int availableCount;
  @JsonKey(name: 'shortage_count', includeIfNull: false)
  final int shortageCount;
  @JsonKey(name: 'non_available_count', includeIfNull: false)
  final int nonAvailableCount;
  static const fromJsonFactory = _$VaccineTotalResFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is VaccineTotalRes &&
            (identical(other.availableCount, availableCount) ||
                const DeepCollectionEquality()
                    .equals(other.availableCount, availableCount)) &&
            (identical(other.shortageCount, shortageCount) ||
                const DeepCollectionEquality()
                    .equals(other.shortageCount, shortageCount)) &&
            (identical(other.nonAvailableCount, nonAvailableCount) ||
                const DeepCollectionEquality()
                    .equals(other.nonAvailableCount, nonAvailableCount)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(availableCount) ^
      const DeepCollectionEquality().hash(shortageCount) ^
      const DeepCollectionEquality().hash(nonAvailableCount) ^
      runtimeType.hashCode;
}

extension $VaccineTotalResExtension on VaccineTotalRes {
  VaccineTotalRes copyWith(
      {int? availableCount, int? shortageCount, int? nonAvailableCount}) {
    return VaccineTotalRes(
        availableCount: availableCount ?? this.availableCount,
        shortageCount: shortageCount ?? this.shortageCount,
        nonAvailableCount: nonAvailableCount ?? this.nonAvailableCount);
  }

  VaccineTotalRes copyWithWrapped(
      {Wrapped<int>? availableCount,
      Wrapped<int>? shortageCount,
      Wrapped<int>? nonAvailableCount}) {
    return VaccineTotalRes(
        availableCount: (availableCount != null
            ? availableCount.value
            : this.availableCount),
        shortageCount:
            (shortageCount != null ? shortageCount.value : this.shortageCount),
        nonAvailableCount: (nonAvailableCount != null
            ? nonAvailableCount.value
            : this.nonAvailableCount));
  }
}

@JsonSerializable(explicitToJson: true)
class MedicineTotalRes {
  const MedicineTotalRes({
    required this.availableCount,
    required this.shortageCount,
    required this.nonAvailableCount,
  });

  factory MedicineTotalRes.fromJson(Map<String, dynamic> json) =>
      _$MedicineTotalResFromJson(json);

  static const toJsonFactory = _$MedicineTotalResToJson;
  Map<String, dynamic> toJson() => _$MedicineTotalResToJson(this);

  @JsonKey(name: 'available_count', includeIfNull: false)
  final int availableCount;
  @JsonKey(name: 'shortage_count', includeIfNull: false)
  final int shortageCount;
  @JsonKey(name: 'non_available_count', includeIfNull: false)
  final int nonAvailableCount;
  static const fromJsonFactory = _$MedicineTotalResFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MedicineTotalRes &&
            (identical(other.availableCount, availableCount) ||
                const DeepCollectionEquality()
                    .equals(other.availableCount, availableCount)) &&
            (identical(other.shortageCount, shortageCount) ||
                const DeepCollectionEquality()
                    .equals(other.shortageCount, shortageCount)) &&
            (identical(other.nonAvailableCount, nonAvailableCount) ||
                const DeepCollectionEquality()
                    .equals(other.nonAvailableCount, nonAvailableCount)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(availableCount) ^
      const DeepCollectionEquality().hash(shortageCount) ^
      const DeepCollectionEquality().hash(nonAvailableCount) ^
      runtimeType.hashCode;
}

extension $MedicineTotalResExtension on MedicineTotalRes {
  MedicineTotalRes copyWith(
      {int? availableCount, int? shortageCount, int? nonAvailableCount}) {
    return MedicineTotalRes(
        availableCount: availableCount ?? this.availableCount,
        shortageCount: shortageCount ?? this.shortageCount,
        nonAvailableCount: nonAvailableCount ?? this.nonAvailableCount);
  }

  MedicineTotalRes copyWithWrapped(
      {Wrapped<int>? availableCount,
      Wrapped<int>? shortageCount,
      Wrapped<int>? nonAvailableCount}) {
    return MedicineTotalRes(
        availableCount: (availableCount != null
            ? availableCount.value
            : this.availableCount),
        shortageCount:
            (shortageCount != null ? shortageCount.value : this.shortageCount),
        nonAvailableCount: (nonAvailableCount != null
            ? nonAvailableCount.value
            : this.nonAvailableCount));
  }
}

@JsonSerializable(explicitToJson: true)
class EquipmentTotalRes {
  const EquipmentTotalRes({
    required this.electronicsCount,
    required this.utensilsCount,
    required this.furnituresCount,
  });

  factory EquipmentTotalRes.fromJson(Map<String, dynamic> json) =>
      _$EquipmentTotalResFromJson(json);

  static const toJsonFactory = _$EquipmentTotalResToJson;
  Map<String, dynamic> toJson() => _$EquipmentTotalResToJson(this);

  @JsonKey(name: 'electronics_count', includeIfNull: false)
  final int electronicsCount;
  @JsonKey(name: 'utensils_count', includeIfNull: false)
  final int utensilsCount;
  @JsonKey(name: 'furnitures_count', includeIfNull: false)
  final int furnituresCount;
  static const fromJsonFactory = _$EquipmentTotalResFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EquipmentTotalRes &&
            (identical(other.electronicsCount, electronicsCount) ||
                const DeepCollectionEquality()
                    .equals(other.electronicsCount, electronicsCount)) &&
            (identical(other.utensilsCount, utensilsCount) ||
                const DeepCollectionEquality()
                    .equals(other.utensilsCount, utensilsCount)) &&
            (identical(other.furnituresCount, furnituresCount) ||
                const DeepCollectionEquality()
                    .equals(other.furnituresCount, furnituresCount)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(electronicsCount) ^
      const DeepCollectionEquality().hash(utensilsCount) ^
      const DeepCollectionEquality().hash(furnituresCount) ^
      runtimeType.hashCode;
}

extension $EquipmentTotalResExtension on EquipmentTotalRes {
  EquipmentTotalRes copyWith(
      {int? electronicsCount, int? utensilsCount, int? furnituresCount}) {
    return EquipmentTotalRes(
        electronicsCount: electronicsCount ?? this.electronicsCount,
        utensilsCount: utensilsCount ?? this.utensilsCount,
        furnituresCount: furnituresCount ?? this.furnituresCount);
  }

  EquipmentTotalRes copyWithWrapped(
      {Wrapped<int>? electronicsCount,
      Wrapped<int>? utensilsCount,
      Wrapped<int>? furnituresCount}) {
    return EquipmentTotalRes(
        electronicsCount: (electronicsCount != null
            ? electronicsCount.value
            : this.electronicsCount),
        utensilsCount:
            (utensilsCount != null ? utensilsCount.value : this.utensilsCount),
        furnituresCount: (furnituresCount != null
            ? furnituresCount.value
            : this.furnituresCount));
  }
}

@JsonSerializable(explicitToJson: true)
class BaseEntity {
  const BaseEntity({
    required this.id,
    required this.rtype,
    required this.cstamp,
    required this.ustamp,
  });

  factory BaseEntity.fromJson(Map<String, dynamic> json) =>
      _$BaseEntityFromJson(json);

  static const toJsonFactory = _$BaseEntityToJson;
  Map<String, dynamic> toJson() => _$BaseEntityToJson(this);

  @JsonKey(name: 'id', includeIfNull: false, defaultValue: '')
  final String id;
  @JsonKey(name: 'rtype', includeIfNull: false, defaultValue: '')
  final String rtype;
  @JsonKey(name: 'cstamp', includeIfNull: false)
  final int cstamp;
  @JsonKey(name: 'ustamp', includeIfNull: false)
  final int ustamp;
  static const fromJsonFactory = _$BaseEntityFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BaseEntity &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.rtype, rtype) ||
                const DeepCollectionEquality().equals(other.rtype, rtype)) &&
            (identical(other.cstamp, cstamp) ||
                const DeepCollectionEquality().equals(other.cstamp, cstamp)) &&
            (identical(other.ustamp, ustamp) ||
                const DeepCollectionEquality().equals(other.ustamp, ustamp)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(rtype) ^
      const DeepCollectionEquality().hash(cstamp) ^
      const DeepCollectionEquality().hash(ustamp) ^
      runtimeType.hashCode;
}

extension $BaseEntityExtension on BaseEntity {
  BaseEntity copyWith({String? id, String? rtype, int? cstamp, int? ustamp}) {
    return BaseEntity(
        id: id ?? this.id,
        rtype: rtype ?? this.rtype,
        cstamp: cstamp ?? this.cstamp,
        ustamp: ustamp ?? this.ustamp);
  }

  BaseEntity copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String>? rtype,
      Wrapped<int>? cstamp,
      Wrapped<int>? ustamp}) {
    return BaseEntity(
        id: (id != null ? id.value : this.id),
        rtype: (rtype != null ? rtype.value : this.rtype),
        cstamp: (cstamp != null ? cstamp.value : this.cstamp),
        ustamp: (ustamp != null ? ustamp.value : this.ustamp));
  }
}

@JsonSerializable(explicitToJson: true)
class Profile {
  const Profile({
    required this.fname,
    required this.lname,
    required this.email,
    required this.phone,
    required this.address,
    this.city,
    this.state,
    this.country,
    this.zipcode,
    this.companyname,
  });

  factory Profile.fromJson(Map<String, dynamic> json) =>
      _$ProfileFromJson(json);

  static const toJsonFactory = _$ProfileToJson;
  Map<String, dynamic> toJson() => _$ProfileToJson(this);

  @JsonKey(name: 'fname', includeIfNull: false, defaultValue: '')
  final String fname;
  @JsonKey(name: 'lname', includeIfNull: false, defaultValue: '')
  final String lname;
  @JsonKey(name: 'email', includeIfNull: false, defaultValue: '')
  final String email;
  @JsonKey(name: 'phone', includeIfNull: false, defaultValue: '')
  final String phone;
  @JsonKey(name: 'address', includeIfNull: false, defaultValue: '')
  final String address;
  @JsonKey(name: 'city', includeIfNull: false, defaultValue: '')
  final String? city;
  @JsonKey(name: 'state', includeIfNull: false, defaultValue: '')
  final String? state;
  @JsonKey(name: 'country', includeIfNull: false, defaultValue: '')
  final String? country;
  @JsonKey(name: 'zipcode', includeIfNull: false, defaultValue: '')
  final String? zipcode;
  @JsonKey(name: 'companyname', includeIfNull: false, defaultValue: '')
  final String? companyname;
  static const fromJsonFactory = _$ProfileFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Profile &&
            (identical(other.fname, fname) ||
                const DeepCollectionEquality().equals(other.fname, fname)) &&
            (identical(other.lname, lname) ||
                const DeepCollectionEquality().equals(other.lname, lname)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)) &&
            (identical(other.country, country) ||
                const DeepCollectionEquality()
                    .equals(other.country, country)) &&
            (identical(other.zipcode, zipcode) ||
                const DeepCollectionEquality()
                    .equals(other.zipcode, zipcode)) &&
            (identical(other.companyname, companyname) ||
                const DeepCollectionEquality()
                    .equals(other.companyname, companyname)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(fname) ^
      const DeepCollectionEquality().hash(lname) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(state) ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(zipcode) ^
      const DeepCollectionEquality().hash(companyname) ^
      runtimeType.hashCode;
}

extension $ProfileExtension on Profile {
  Profile copyWith(
      {String? fname,
      String? lname,
      String? email,
      String? phone,
      String? address,
      String? city,
      String? state,
      String? country,
      String? zipcode,
      String? companyname}) {
    return Profile(
        fname: fname ?? this.fname,
        lname: lname ?? this.lname,
        email: email ?? this.email,
        phone: phone ?? this.phone,
        address: address ?? this.address,
        city: city ?? this.city,
        state: state ?? this.state,
        country: country ?? this.country,
        zipcode: zipcode ?? this.zipcode,
        companyname: companyname ?? this.companyname);
  }

  Profile copyWithWrapped(
      {Wrapped<String>? fname,
      Wrapped<String>? lname,
      Wrapped<String>? email,
      Wrapped<String>? phone,
      Wrapped<String>? address,
      Wrapped<String?>? city,
      Wrapped<String?>? state,
      Wrapped<String?>? country,
      Wrapped<String?>? zipcode,
      Wrapped<String?>? companyname}) {
    return Profile(
        fname: (fname != null ? fname.value : this.fname),
        lname: (lname != null ? lname.value : this.lname),
        email: (email != null ? email.value : this.email),
        phone: (phone != null ? phone.value : this.phone),
        address: (address != null ? address.value : this.address),
        city: (city != null ? city.value : this.city),
        state: (state != null ? state.value : this.state),
        country: (country != null ? country.value : this.country),
        zipcode: (zipcode != null ? zipcode.value : this.zipcode),
        companyname:
            (companyname != null ? companyname.value : this.companyname));
  }
}

@JsonSerializable(explicitToJson: true)
class ProfileInfo {
  const ProfileInfo({
    required this.userId,
    required this.role,
    required this.ustamp,
    required this.rtype,
    required this.fname,
    required this.lname,
    required this.email,
    required this.phone,
    required this.address,
    this.city,
    this.state,
    this.country,
    this.zipcode,
    this.companyname,
  });

  factory ProfileInfo.fromJson(Map<String, dynamic> json) =>
      _$ProfileInfoFromJson(json);

  static const toJsonFactory = _$ProfileInfoToJson;
  Map<String, dynamic> toJson() => _$ProfileInfoToJson(this);

  @JsonKey(name: 'user_id', includeIfNull: false, defaultValue: '')
  final String userId;
  @JsonKey(name: 'role', includeIfNull: false, defaultValue: '')
  final String role;
  @JsonKey(name: 'ustamp', includeIfNull: false)
  final int ustamp;
  @JsonKey(name: 'rtype', includeIfNull: false, defaultValue: '')
  final String rtype;
  @JsonKey(name: 'fname', includeIfNull: false, defaultValue: '')
  final String fname;
  @JsonKey(name: 'lname', includeIfNull: false, defaultValue: '')
  final String lname;
  @JsonKey(name: 'email', includeIfNull: false, defaultValue: '')
  final String email;
  @JsonKey(name: 'phone', includeIfNull: false, defaultValue: '')
  final String phone;
  @JsonKey(name: 'address', includeIfNull: false, defaultValue: '')
  final String address;
  @JsonKey(name: 'city', includeIfNull: false, defaultValue: '')
  final String? city;
  @JsonKey(name: 'state', includeIfNull: false, defaultValue: '')
  final String? state;
  @JsonKey(name: 'country', includeIfNull: false, defaultValue: '')
  final String? country;
  @JsonKey(name: 'zipcode', includeIfNull: false, defaultValue: '')
  final String? zipcode;
  @JsonKey(name: 'companyname', includeIfNull: false, defaultValue: '')
  final String? companyname;
  static const fromJsonFactory = _$ProfileInfoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ProfileInfo &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.role, role) ||
                const DeepCollectionEquality().equals(other.role, role)) &&
            (identical(other.ustamp, ustamp) ||
                const DeepCollectionEquality().equals(other.ustamp, ustamp)) &&
            (identical(other.rtype, rtype) ||
                const DeepCollectionEquality().equals(other.rtype, rtype)) &&
            (identical(other.fname, fname) ||
                const DeepCollectionEquality().equals(other.fname, fname)) &&
            (identical(other.lname, lname) ||
                const DeepCollectionEquality().equals(other.lname, lname)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)) &&
            (identical(other.country, country) ||
                const DeepCollectionEquality()
                    .equals(other.country, country)) &&
            (identical(other.zipcode, zipcode) ||
                const DeepCollectionEquality()
                    .equals(other.zipcode, zipcode)) &&
            (identical(other.companyname, companyname) ||
                const DeepCollectionEquality()
                    .equals(other.companyname, companyname)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(role) ^
      const DeepCollectionEquality().hash(ustamp) ^
      const DeepCollectionEquality().hash(rtype) ^
      const DeepCollectionEquality().hash(fname) ^
      const DeepCollectionEquality().hash(lname) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(state) ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(zipcode) ^
      const DeepCollectionEquality().hash(companyname) ^
      runtimeType.hashCode;
}

extension $ProfileInfoExtension on ProfileInfo {
  ProfileInfo copyWith(
      {String? userId,
      String? role,
      int? ustamp,
      String? rtype,
      String? fname,
      String? lname,
      String? email,
      String? phone,
      String? address,
      String? city,
      String? state,
      String? country,
      String? zipcode,
      String? companyname}) {
    return ProfileInfo(
        userId: userId ?? this.userId,
        role: role ?? this.role,
        ustamp: ustamp ?? this.ustamp,
        rtype: rtype ?? this.rtype,
        fname: fname ?? this.fname,
        lname: lname ?? this.lname,
        email: email ?? this.email,
        phone: phone ?? this.phone,
        address: address ?? this.address,
        city: city ?? this.city,
        state: state ?? this.state,
        country: country ?? this.country,
        zipcode: zipcode ?? this.zipcode,
        companyname: companyname ?? this.companyname);
  }

  ProfileInfo copyWithWrapped(
      {Wrapped<String>? userId,
      Wrapped<String>? role,
      Wrapped<int>? ustamp,
      Wrapped<String>? rtype,
      Wrapped<String>? fname,
      Wrapped<String>? lname,
      Wrapped<String>? email,
      Wrapped<String>? phone,
      Wrapped<String>? address,
      Wrapped<String?>? city,
      Wrapped<String?>? state,
      Wrapped<String?>? country,
      Wrapped<String?>? zipcode,
      Wrapped<String?>? companyname}) {
    return ProfileInfo(
        userId: (userId != null ? userId.value : this.userId),
        role: (role != null ? role.value : this.role),
        ustamp: (ustamp != null ? ustamp.value : this.ustamp),
        rtype: (rtype != null ? rtype.value : this.rtype),
        fname: (fname != null ? fname.value : this.fname),
        lname: (lname != null ? lname.value : this.lname),
        email: (email != null ? email.value : this.email),
        phone: (phone != null ? phone.value : this.phone),
        address: (address != null ? address.value : this.address),
        city: (city != null ? city.value : this.city),
        state: (state != null ? state.value : this.state),
        country: (country != null ? country.value : this.country),
        zipcode: (zipcode != null ? zipcode.value : this.zipcode),
        companyname:
            (companyname != null ? companyname.value : this.companyname));
  }
}

@JsonSerializable(explicitToJson: true)
class ProfileRes {
  const ProfileRes({
    this.profile,
    required this.ok,
    this.msg,
    this.trace,
  });

  factory ProfileRes.fromJson(Map<String, dynamic> json) =>
      _$ProfileResFromJson(json);

  static const toJsonFactory = _$ProfileResToJson;
  Map<String, dynamic> toJson() => _$ProfileResToJson(this);

  @JsonKey(name: 'profile', includeIfNull: false)
  final ProfileInfo? profile;
  @JsonKey(name: 'ok', includeIfNull: false)
  final bool ok;
  @JsonKey(name: 'msg', includeIfNull: false, defaultValue: '')
  final String? msg;
  @JsonKey(name: 'trace', includeIfNull: false, defaultValue: '')
  final String? trace;
  static const fromJsonFactory = _$ProfileResFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ProfileRes &&
            (identical(other.profile, profile) ||
                const DeepCollectionEquality()
                    .equals(other.profile, profile)) &&
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
      const DeepCollectionEquality().hash(profile) ^
      const DeepCollectionEquality().hash(ok) ^
      const DeepCollectionEquality().hash(msg) ^
      const DeepCollectionEquality().hash(trace) ^
      runtimeType.hashCode;
}

extension $ProfileResExtension on ProfileRes {
  ProfileRes copyWith(
      {ProfileInfo? profile, bool? ok, String? msg, String? trace}) {
    return ProfileRes(
        profile: profile ?? this.profile,
        ok: ok ?? this.ok,
        msg: msg ?? this.msg,
        trace: trace ?? this.trace);
  }

  ProfileRes copyWithWrapped(
      {Wrapped<ProfileInfo?>? profile,
      Wrapped<bool>? ok,
      Wrapped<String?>? msg,
      Wrapped<String?>? trace}) {
    return ProfileRes(
        profile: (profile != null ? profile.value : this.profile),
        ok: (ok != null ? ok.value : this.ok),
        msg: (msg != null ? msg.value : this.msg),
        trace: (trace != null ? trace.value : this.trace));
  }
}

@JsonSerializable(explicitToJson: true)
class Patient {
  const Patient({
    required this.patientType,
    required this.patientName,
    required this.patientId,
    required this.dob,
    required this.age,
    required this.gender,
    this.phone1,
    this.phone2,
    this.motherName,
    this.fatherName,
    this.district,
    this.state,
    this.pincode,
    this.address,
    this.previousVaccine,
    this.nextVaccine,
    this.previousAdministration,
    this.nextAdministration,
    this.allergies,
  });

  factory Patient.fromJson(Map<String, dynamic> json) =>
      _$PatientFromJson(json);

  static const toJsonFactory = _$PatientToJson;
  Map<String, dynamic> toJson() => _$PatientToJson(this);

  @JsonKey(name: 'patient_type', includeIfNull: false, defaultValue: '')
  final String patientType;
  @JsonKey(name: 'patient_name', includeIfNull: false, defaultValue: '')
  final String patientName;
  @JsonKey(name: 'patient_id', includeIfNull: false, defaultValue: '')
  final String patientId;
  @JsonKey(name: 'dob', includeIfNull: false, defaultValue: '')
  final String dob;
  @JsonKey(name: 'age', includeIfNull: false)
  final int age;
  @JsonKey(name: 'gender', includeIfNull: false, defaultValue: '')
  final String gender;
  @JsonKey(name: 'phone_1', includeIfNull: false, defaultValue: '')
  final String? phone1;
  @JsonKey(name: 'phone_2', includeIfNull: false, defaultValue: '')
  final String? phone2;
  @JsonKey(name: 'mother_name', includeIfNull: false, defaultValue: '')
  final String? motherName;
  @JsonKey(name: 'father_name', includeIfNull: false, defaultValue: '')
  final String? fatherName;
  @JsonKey(name: 'district', includeIfNull: false, defaultValue: '')
  final String? district;
  @JsonKey(name: 'state', includeIfNull: false, defaultValue: '')
  final String? state;
  @JsonKey(name: 'pincode', includeIfNull: false, defaultValue: '')
  final String? pincode;
  @JsonKey(name: 'address', includeIfNull: false, defaultValue: '')
  final String? address;
  @JsonKey(name: 'previous_vaccine', includeIfNull: false, defaultValue: '')
  final String? previousVaccine;
  @JsonKey(name: 'next_vaccine', includeIfNull: false, defaultValue: '')
  final String? nextVaccine;
  @JsonKey(
      name: 'previous_administration', includeIfNull: false, defaultValue: '')
  final String? previousAdministration;
  @JsonKey(name: 'next_administration', includeIfNull: false, defaultValue: '')
  final String? nextAdministration;
  @JsonKey(name: 'allergies', includeIfNull: false, defaultValue: '')
  final String? allergies;
  static const fromJsonFactory = _$PatientFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Patient &&
            (identical(other.patientType, patientType) ||
                const DeepCollectionEquality()
                    .equals(other.patientType, patientType)) &&
            (identical(other.patientName, patientName) ||
                const DeepCollectionEquality()
                    .equals(other.patientName, patientName)) &&
            (identical(other.patientId, patientId) ||
                const DeepCollectionEquality()
                    .equals(other.patientId, patientId)) &&
            (identical(other.dob, dob) ||
                const DeepCollectionEquality().equals(other.dob, dob)) &&
            (identical(other.age, age) ||
                const DeepCollectionEquality().equals(other.age, age)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.phone1, phone1) ||
                const DeepCollectionEquality().equals(other.phone1, phone1)) &&
            (identical(other.phone2, phone2) ||
                const DeepCollectionEquality().equals(other.phone2, phone2)) &&
            (identical(other.motherName, motherName) ||
                const DeepCollectionEquality()
                    .equals(other.motherName, motherName)) &&
            (identical(other.fatherName, fatherName) ||
                const DeepCollectionEquality()
                    .equals(other.fatherName, fatherName)) &&
            (identical(other.district, district) ||
                const DeepCollectionEquality()
                    .equals(other.district, district)) &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)) &&
            (identical(other.pincode, pincode) ||
                const DeepCollectionEquality()
                    .equals(other.pincode, pincode)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.previousVaccine, previousVaccine) ||
                const DeepCollectionEquality()
                    .equals(other.previousVaccine, previousVaccine)) &&
            (identical(other.nextVaccine, nextVaccine) ||
                const DeepCollectionEquality()
                    .equals(other.nextVaccine, nextVaccine)) &&
            (identical(other.previousAdministration, previousAdministration) ||
                const DeepCollectionEquality().equals(
                    other.previousAdministration, previousAdministration)) &&
            (identical(other.nextAdministration, nextAdministration) ||
                const DeepCollectionEquality()
                    .equals(other.nextAdministration, nextAdministration)) &&
            (identical(other.allergies, allergies) ||
                const DeepCollectionEquality()
                    .equals(other.allergies, allergies)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(patientType) ^
      const DeepCollectionEquality().hash(patientName) ^
      const DeepCollectionEquality().hash(patientId) ^
      const DeepCollectionEquality().hash(dob) ^
      const DeepCollectionEquality().hash(age) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(phone1) ^
      const DeepCollectionEquality().hash(phone2) ^
      const DeepCollectionEquality().hash(motherName) ^
      const DeepCollectionEquality().hash(fatherName) ^
      const DeepCollectionEquality().hash(district) ^
      const DeepCollectionEquality().hash(state) ^
      const DeepCollectionEquality().hash(pincode) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(previousVaccine) ^
      const DeepCollectionEquality().hash(nextVaccine) ^
      const DeepCollectionEquality().hash(previousAdministration) ^
      const DeepCollectionEquality().hash(nextAdministration) ^
      const DeepCollectionEquality().hash(allergies) ^
      runtimeType.hashCode;
}

extension $PatientExtension on Patient {
  Patient copyWith(
      {String? patientType,
      String? patientName,
      String? patientId,
      String? dob,
      int? age,
      String? gender,
      String? phone1,
      String? phone2,
      String? motherName,
      String? fatherName,
      String? district,
      String? state,
      String? pincode,
      String? address,
      String? previousVaccine,
      String? nextVaccine,
      String? previousAdministration,
      String? nextAdministration,
      String? allergies}) {
    return Patient(
        patientType: patientType ?? this.patientType,
        patientName: patientName ?? this.patientName,
        patientId: patientId ?? this.patientId,
        dob: dob ?? this.dob,
        age: age ?? this.age,
        gender: gender ?? this.gender,
        phone1: phone1 ?? this.phone1,
        phone2: phone2 ?? this.phone2,
        motherName: motherName ?? this.motherName,
        fatherName: fatherName ?? this.fatherName,
        district: district ?? this.district,
        state: state ?? this.state,
        pincode: pincode ?? this.pincode,
        address: address ?? this.address,
        previousVaccine: previousVaccine ?? this.previousVaccine,
        nextVaccine: nextVaccine ?? this.nextVaccine,
        previousAdministration:
            previousAdministration ?? this.previousAdministration,
        nextAdministration: nextAdministration ?? this.nextAdministration,
        allergies: allergies ?? this.allergies);
  }

  Patient copyWithWrapped(
      {Wrapped<String>? patientType,
      Wrapped<String>? patientName,
      Wrapped<String>? patientId,
      Wrapped<String>? dob,
      Wrapped<int>? age,
      Wrapped<String>? gender,
      Wrapped<String?>? phone1,
      Wrapped<String?>? phone2,
      Wrapped<String?>? motherName,
      Wrapped<String?>? fatherName,
      Wrapped<String?>? district,
      Wrapped<String?>? state,
      Wrapped<String?>? pincode,
      Wrapped<String?>? address,
      Wrapped<String?>? previousVaccine,
      Wrapped<String?>? nextVaccine,
      Wrapped<String?>? previousAdministration,
      Wrapped<String?>? nextAdministration,
      Wrapped<String?>? allergies}) {
    return Patient(
        patientType:
            (patientType != null ? patientType.value : this.patientType),
        patientName:
            (patientName != null ? patientName.value : this.patientName),
        patientId: (patientId != null ? patientId.value : this.patientId),
        dob: (dob != null ? dob.value : this.dob),
        age: (age != null ? age.value : this.age),
        gender: (gender != null ? gender.value : this.gender),
        phone1: (phone1 != null ? phone1.value : this.phone1),
        phone2: (phone2 != null ? phone2.value : this.phone2),
        motherName: (motherName != null ? motherName.value : this.motherName),
        fatherName: (fatherName != null ? fatherName.value : this.fatherName),
        district: (district != null ? district.value : this.district),
        state: (state != null ? state.value : this.state),
        pincode: (pincode != null ? pincode.value : this.pincode),
        address: (address != null ? address.value : this.address),
        previousVaccine: (previousVaccine != null
            ? previousVaccine.value
            : this.previousVaccine),
        nextVaccine:
            (nextVaccine != null ? nextVaccine.value : this.nextVaccine),
        previousAdministration: (previousAdministration != null
            ? previousAdministration.value
            : this.previousAdministration),
        nextAdministration: (nextAdministration != null
            ? nextAdministration.value
            : this.nextAdministration),
        allergies: (allergies != null ? allergies.value : this.allergies));
  }
}

@JsonSerializable(explicitToJson: true)
class PatientInfo {
  const PatientInfo({
    required this.patientType,
    required this.patientName,
    required this.patientId,
    required this.dob,
    required this.age,
    required this.gender,
    this.phone1,
    this.phone2,
    this.motherName,
    this.fatherName,
    this.district,
    this.state,
    this.pincode,
    this.address,
    this.previousVaccine,
    this.nextVaccine,
    this.previousAdministration,
    this.nextAdministration,
    this.allergies,
    required this.id,
    required this.rtype,
    required this.cstamp,
    required this.ustamp,
  });

  factory PatientInfo.fromJson(Map<String, dynamic> json) =>
      _$PatientInfoFromJson(json);

  static const toJsonFactory = _$PatientInfoToJson;
  Map<String, dynamic> toJson() => _$PatientInfoToJson(this);

  @JsonKey(name: 'patient_type', includeIfNull: false, defaultValue: '')
  final String patientType;
  @JsonKey(name: 'patient_name', includeIfNull: false, defaultValue: '')
  final String patientName;
  @JsonKey(name: 'patient_id', includeIfNull: false, defaultValue: '')
  final String patientId;
  @JsonKey(name: 'dob', includeIfNull: false, defaultValue: '')
  final String dob;
  @JsonKey(name: 'age', includeIfNull: false)
  final int age;
  @JsonKey(name: 'gender', includeIfNull: false, defaultValue: '')
  final String gender;
  @JsonKey(name: 'phone_1', includeIfNull: false, defaultValue: '')
  final String? phone1;
  @JsonKey(name: 'phone_2', includeIfNull: false, defaultValue: '')
  final String? phone2;
  @JsonKey(name: 'mother_name', includeIfNull: false, defaultValue: '')
  final String? motherName;
  @JsonKey(name: 'father_name', includeIfNull: false, defaultValue: '')
  final String? fatherName;
  @JsonKey(name: 'district', includeIfNull: false, defaultValue: '')
  final String? district;
  @JsonKey(name: 'state', includeIfNull: false, defaultValue: '')
  final String? state;
  @JsonKey(name: 'pincode', includeIfNull: false, defaultValue: '')
  final String? pincode;
  @JsonKey(name: 'address', includeIfNull: false, defaultValue: '')
  final String? address;
  @JsonKey(name: 'previous_vaccine', includeIfNull: false, defaultValue: '')
  final String? previousVaccine;
  @JsonKey(name: 'next_vaccine', includeIfNull: false, defaultValue: '')
  final String? nextVaccine;
  @JsonKey(
      name: 'previous_administration', includeIfNull: false, defaultValue: '')
  final String? previousAdministration;
  @JsonKey(name: 'next_administration', includeIfNull: false, defaultValue: '')
  final String? nextAdministration;
  @JsonKey(name: 'allergies', includeIfNull: false, defaultValue: '')
  final String? allergies;
  @JsonKey(name: 'id', includeIfNull: false, defaultValue: '')
  final String id;
  @JsonKey(name: 'rtype', includeIfNull: false, defaultValue: '')
  final String rtype;
  @JsonKey(name: 'cstamp', includeIfNull: false)
  final int cstamp;
  @JsonKey(name: 'ustamp', includeIfNull: false)
  final int ustamp;
  static const fromJsonFactory = _$PatientInfoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PatientInfo &&
            (identical(other.patientType, patientType) ||
                const DeepCollectionEquality()
                    .equals(other.patientType, patientType)) &&
            (identical(other.patientName, patientName) ||
                const DeepCollectionEquality()
                    .equals(other.patientName, patientName)) &&
            (identical(other.patientId, patientId) ||
                const DeepCollectionEquality()
                    .equals(other.patientId, patientId)) &&
            (identical(other.dob, dob) ||
                const DeepCollectionEquality().equals(other.dob, dob)) &&
            (identical(other.age, age) ||
                const DeepCollectionEquality().equals(other.age, age)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.phone1, phone1) ||
                const DeepCollectionEquality().equals(other.phone1, phone1)) &&
            (identical(other.phone2, phone2) ||
                const DeepCollectionEquality().equals(other.phone2, phone2)) &&
            (identical(other.motherName, motherName) ||
                const DeepCollectionEquality()
                    .equals(other.motherName, motherName)) &&
            (identical(other.fatherName, fatherName) ||
                const DeepCollectionEquality()
                    .equals(other.fatherName, fatherName)) &&
            (identical(other.district, district) ||
                const DeepCollectionEquality()
                    .equals(other.district, district)) &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)) &&
            (identical(other.pincode, pincode) ||
                const DeepCollectionEquality()
                    .equals(other.pincode, pincode)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.previousVaccine, previousVaccine) ||
                const DeepCollectionEquality()
                    .equals(other.previousVaccine, previousVaccine)) &&
            (identical(other.nextVaccine, nextVaccine) ||
                const DeepCollectionEquality()
                    .equals(other.nextVaccine, nextVaccine)) &&
            (identical(other.previousAdministration, previousAdministration) ||
                const DeepCollectionEquality().equals(
                    other.previousAdministration, previousAdministration)) &&
            (identical(other.nextAdministration, nextAdministration) ||
                const DeepCollectionEquality()
                    .equals(other.nextAdministration, nextAdministration)) &&
            (identical(other.allergies, allergies) ||
                const DeepCollectionEquality()
                    .equals(other.allergies, allergies)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.rtype, rtype) ||
                const DeepCollectionEquality().equals(other.rtype, rtype)) &&
            (identical(other.cstamp, cstamp) ||
                const DeepCollectionEquality().equals(other.cstamp, cstamp)) &&
            (identical(other.ustamp, ustamp) ||
                const DeepCollectionEquality().equals(other.ustamp, ustamp)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(patientType) ^
      const DeepCollectionEquality().hash(patientName) ^
      const DeepCollectionEquality().hash(patientId) ^
      const DeepCollectionEquality().hash(dob) ^
      const DeepCollectionEquality().hash(age) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(phone1) ^
      const DeepCollectionEquality().hash(phone2) ^
      const DeepCollectionEquality().hash(motherName) ^
      const DeepCollectionEquality().hash(fatherName) ^
      const DeepCollectionEquality().hash(district) ^
      const DeepCollectionEquality().hash(state) ^
      const DeepCollectionEquality().hash(pincode) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(previousVaccine) ^
      const DeepCollectionEquality().hash(nextVaccine) ^
      const DeepCollectionEquality().hash(previousAdministration) ^
      const DeepCollectionEquality().hash(nextAdministration) ^
      const DeepCollectionEquality().hash(allergies) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(rtype) ^
      const DeepCollectionEquality().hash(cstamp) ^
      const DeepCollectionEquality().hash(ustamp) ^
      runtimeType.hashCode;
}

extension $PatientInfoExtension on PatientInfo {
  PatientInfo copyWith(
      {String? patientType,
      String? patientName,
      String? patientId,
      String? dob,
      int? age,
      String? gender,
      String? phone1,
      String? phone2,
      String? motherName,
      String? fatherName,
      String? district,
      String? state,
      String? pincode,
      String? address,
      String? previousVaccine,
      String? nextVaccine,
      String? previousAdministration,
      String? nextAdministration,
      String? allergies,
      String? id,
      String? rtype,
      int? cstamp,
      int? ustamp}) {
    return PatientInfo(
        patientType: patientType ?? this.patientType,
        patientName: patientName ?? this.patientName,
        patientId: patientId ?? this.patientId,
        dob: dob ?? this.dob,
        age: age ?? this.age,
        gender: gender ?? this.gender,
        phone1: phone1 ?? this.phone1,
        phone2: phone2 ?? this.phone2,
        motherName: motherName ?? this.motherName,
        fatherName: fatherName ?? this.fatherName,
        district: district ?? this.district,
        state: state ?? this.state,
        pincode: pincode ?? this.pincode,
        address: address ?? this.address,
        previousVaccine: previousVaccine ?? this.previousVaccine,
        nextVaccine: nextVaccine ?? this.nextVaccine,
        previousAdministration:
            previousAdministration ?? this.previousAdministration,
        nextAdministration: nextAdministration ?? this.nextAdministration,
        allergies: allergies ?? this.allergies,
        id: id ?? this.id,
        rtype: rtype ?? this.rtype,
        cstamp: cstamp ?? this.cstamp,
        ustamp: ustamp ?? this.ustamp);
  }

  PatientInfo copyWithWrapped(
      {Wrapped<String>? patientType,
      Wrapped<String>? patientName,
      Wrapped<String>? patientId,
      Wrapped<String>? dob,
      Wrapped<int>? age,
      Wrapped<String>? gender,
      Wrapped<String?>? phone1,
      Wrapped<String?>? phone2,
      Wrapped<String?>? motherName,
      Wrapped<String?>? fatherName,
      Wrapped<String?>? district,
      Wrapped<String?>? state,
      Wrapped<String?>? pincode,
      Wrapped<String?>? address,
      Wrapped<String?>? previousVaccine,
      Wrapped<String?>? nextVaccine,
      Wrapped<String?>? previousAdministration,
      Wrapped<String?>? nextAdministration,
      Wrapped<String?>? allergies,
      Wrapped<String>? id,
      Wrapped<String>? rtype,
      Wrapped<int>? cstamp,
      Wrapped<int>? ustamp}) {
    return PatientInfo(
        patientType:
            (patientType != null ? patientType.value : this.patientType),
        patientName:
            (patientName != null ? patientName.value : this.patientName),
        patientId: (patientId != null ? patientId.value : this.patientId),
        dob: (dob != null ? dob.value : this.dob),
        age: (age != null ? age.value : this.age),
        gender: (gender != null ? gender.value : this.gender),
        phone1: (phone1 != null ? phone1.value : this.phone1),
        phone2: (phone2 != null ? phone2.value : this.phone2),
        motherName: (motherName != null ? motherName.value : this.motherName),
        fatherName: (fatherName != null ? fatherName.value : this.fatherName),
        district: (district != null ? district.value : this.district),
        state: (state != null ? state.value : this.state),
        pincode: (pincode != null ? pincode.value : this.pincode),
        address: (address != null ? address.value : this.address),
        previousVaccine: (previousVaccine != null
            ? previousVaccine.value
            : this.previousVaccine),
        nextVaccine:
            (nextVaccine != null ? nextVaccine.value : this.nextVaccine),
        previousAdministration: (previousAdministration != null
            ? previousAdministration.value
            : this.previousAdministration),
        nextAdministration: (nextAdministration != null
            ? nextAdministration.value
            : this.nextAdministration),
        allergies: (allergies != null ? allergies.value : this.allergies),
        id: (id != null ? id.value : this.id),
        rtype: (rtype != null ? rtype.value : this.rtype),
        cstamp: (cstamp != null ? cstamp.value : this.cstamp),
        ustamp: (ustamp != null ? ustamp.value : this.ustamp));
  }
}

@JsonSerializable(explicitToJson: true)
class PatientObject {
  const PatientObject({
    required this.administredVaccines,
    required this.patientType,
    required this.patientName,
    required this.patientId,
    required this.dob,
    required this.age,
    required this.gender,
    this.phone1,
    this.phone2,
    this.motherName,
    this.fatherName,
    this.district,
    this.state,
    this.pincode,
    this.address,
    this.previousVaccine,
    this.nextVaccine,
    this.previousAdministration,
    this.nextAdministration,
    this.allergies,
    required this.id,
    required this.rtype,
    required this.cstamp,
    required this.ustamp,
  });

  factory PatientObject.fromJson(Map<String, dynamic> json) =>
      _$PatientObjectFromJson(json);

  static const toJsonFactory = _$PatientObjectToJson;
  Map<String, dynamic> toJson() => _$PatientObjectToJson(this);

  @JsonKey(name: 'administred_vaccines', includeIfNull: false, defaultValue: '')
  final String administredVaccines;
  @JsonKey(name: 'patient_type', includeIfNull: false, defaultValue: '')
  final String patientType;
  @JsonKey(name: 'patient_name', includeIfNull: false, defaultValue: '')
  final String patientName;
  @JsonKey(name: 'patient_id', includeIfNull: false, defaultValue: '')
  final String patientId;
  @JsonKey(name: 'dob', includeIfNull: false, defaultValue: '')
  final String dob;
  @JsonKey(name: 'age', includeIfNull: false)
  final int age;
  @JsonKey(name: 'gender', includeIfNull: false, defaultValue: '')
  final String gender;
  @JsonKey(name: 'phone_1', includeIfNull: false, defaultValue: '')
  final String? phone1;
  @JsonKey(name: 'phone_2', includeIfNull: false, defaultValue: '')
  final String? phone2;
  @JsonKey(name: 'mother_name', includeIfNull: false, defaultValue: '')
  final String? motherName;
  @JsonKey(name: 'father_name', includeIfNull: false, defaultValue: '')
  final String? fatherName;
  @JsonKey(name: 'district', includeIfNull: false, defaultValue: '')
  final String? district;
  @JsonKey(name: 'state', includeIfNull: false, defaultValue: '')
  final String? state;
  @JsonKey(name: 'pincode', includeIfNull: false, defaultValue: '')
  final String? pincode;
  @JsonKey(name: 'address', includeIfNull: false, defaultValue: '')
  final String? address;
  @JsonKey(name: 'previous_vaccine', includeIfNull: false, defaultValue: '')
  final String? previousVaccine;
  @JsonKey(name: 'next_vaccine', includeIfNull: false, defaultValue: '')
  final String? nextVaccine;
  @JsonKey(
      name: 'previous_administration', includeIfNull: false, defaultValue: '')
  final String? previousAdministration;
  @JsonKey(name: 'next_administration', includeIfNull: false, defaultValue: '')
  final String? nextAdministration;
  @JsonKey(name: 'allergies', includeIfNull: false, defaultValue: '')
  final String? allergies;
  @JsonKey(name: 'id', includeIfNull: false, defaultValue: '')
  final String id;
  @JsonKey(name: 'rtype', includeIfNull: false, defaultValue: '')
  final String rtype;
  @JsonKey(name: 'cstamp', includeIfNull: false)
  final int cstamp;
  @JsonKey(name: 'ustamp', includeIfNull: false)
  final int ustamp;
  static const fromJsonFactory = _$PatientObjectFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PatientObject &&
            (identical(other.administredVaccines, administredVaccines) ||
                const DeepCollectionEquality()
                    .equals(other.administredVaccines, administredVaccines)) &&
            (identical(other.patientType, patientType) ||
                const DeepCollectionEquality()
                    .equals(other.patientType, patientType)) &&
            (identical(other.patientName, patientName) ||
                const DeepCollectionEquality()
                    .equals(other.patientName, patientName)) &&
            (identical(other.patientId, patientId) ||
                const DeepCollectionEquality()
                    .equals(other.patientId, patientId)) &&
            (identical(other.dob, dob) ||
                const DeepCollectionEquality().equals(other.dob, dob)) &&
            (identical(other.age, age) ||
                const DeepCollectionEquality().equals(other.age, age)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.phone1, phone1) ||
                const DeepCollectionEquality().equals(other.phone1, phone1)) &&
            (identical(other.phone2, phone2) ||
                const DeepCollectionEquality().equals(other.phone2, phone2)) &&
            (identical(other.motherName, motherName) ||
                const DeepCollectionEquality()
                    .equals(other.motherName, motherName)) &&
            (identical(other.fatherName, fatherName) ||
                const DeepCollectionEquality()
                    .equals(other.fatherName, fatherName)) &&
            (identical(other.district, district) ||
                const DeepCollectionEquality()
                    .equals(other.district, district)) &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)) &&
            (identical(other.pincode, pincode) ||
                const DeepCollectionEquality()
                    .equals(other.pincode, pincode)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.previousVaccine, previousVaccine) ||
                const DeepCollectionEquality()
                    .equals(other.previousVaccine, previousVaccine)) &&
            (identical(other.nextVaccine, nextVaccine) ||
                const DeepCollectionEquality()
                    .equals(other.nextVaccine, nextVaccine)) &&
            (identical(other.previousAdministration, previousAdministration) ||
                const DeepCollectionEquality().equals(
                    other.previousAdministration, previousAdministration)) &&
            (identical(other.nextAdministration, nextAdministration) ||
                const DeepCollectionEquality()
                    .equals(other.nextAdministration, nextAdministration)) &&
            (identical(other.allergies, allergies) ||
                const DeepCollectionEquality()
                    .equals(other.allergies, allergies)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.rtype, rtype) ||
                const DeepCollectionEquality().equals(other.rtype, rtype)) &&
            (identical(other.cstamp, cstamp) ||
                const DeepCollectionEquality().equals(other.cstamp, cstamp)) &&
            (identical(other.ustamp, ustamp) ||
                const DeepCollectionEquality().equals(other.ustamp, ustamp)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(administredVaccines) ^
      const DeepCollectionEquality().hash(patientType) ^
      const DeepCollectionEquality().hash(patientName) ^
      const DeepCollectionEquality().hash(patientId) ^
      const DeepCollectionEquality().hash(dob) ^
      const DeepCollectionEquality().hash(age) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(phone1) ^
      const DeepCollectionEquality().hash(phone2) ^
      const DeepCollectionEquality().hash(motherName) ^
      const DeepCollectionEquality().hash(fatherName) ^
      const DeepCollectionEquality().hash(district) ^
      const DeepCollectionEquality().hash(state) ^
      const DeepCollectionEquality().hash(pincode) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(previousVaccine) ^
      const DeepCollectionEquality().hash(nextVaccine) ^
      const DeepCollectionEquality().hash(previousAdministration) ^
      const DeepCollectionEquality().hash(nextAdministration) ^
      const DeepCollectionEquality().hash(allergies) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(rtype) ^
      const DeepCollectionEquality().hash(cstamp) ^
      const DeepCollectionEquality().hash(ustamp) ^
      runtimeType.hashCode;
}

extension $PatientObjectExtension on PatientObject {
  PatientObject copyWith(
      {String? administredVaccines,
      String? patientType,
      String? patientName,
      String? patientId,
      String? dob,
      int? age,
      String? gender,
      String? phone1,
      String? phone2,
      String? motherName,
      String? fatherName,
      String? district,
      String? state,
      String? pincode,
      String? address,
      String? previousVaccine,
      String? nextVaccine,
      String? previousAdministration,
      String? nextAdministration,
      String? allergies,
      String? id,
      String? rtype,
      int? cstamp,
      int? ustamp}) {
    return PatientObject(
        administredVaccines: administredVaccines ?? this.administredVaccines,
        patientType: patientType ?? this.patientType,
        patientName: patientName ?? this.patientName,
        patientId: patientId ?? this.patientId,
        dob: dob ?? this.dob,
        age: age ?? this.age,
        gender: gender ?? this.gender,
        phone1: phone1 ?? this.phone1,
        phone2: phone2 ?? this.phone2,
        motherName: motherName ?? this.motherName,
        fatherName: fatherName ?? this.fatherName,
        district: district ?? this.district,
        state: state ?? this.state,
        pincode: pincode ?? this.pincode,
        address: address ?? this.address,
        previousVaccine: previousVaccine ?? this.previousVaccine,
        nextVaccine: nextVaccine ?? this.nextVaccine,
        previousAdministration:
            previousAdministration ?? this.previousAdministration,
        nextAdministration: nextAdministration ?? this.nextAdministration,
        allergies: allergies ?? this.allergies,
        id: id ?? this.id,
        rtype: rtype ?? this.rtype,
        cstamp: cstamp ?? this.cstamp,
        ustamp: ustamp ?? this.ustamp);
  }

  PatientObject copyWithWrapped(
      {Wrapped<String>? administredVaccines,
      Wrapped<String>? patientType,
      Wrapped<String>? patientName,
      Wrapped<String>? patientId,
      Wrapped<String>? dob,
      Wrapped<int>? age,
      Wrapped<String>? gender,
      Wrapped<String?>? phone1,
      Wrapped<String?>? phone2,
      Wrapped<String?>? motherName,
      Wrapped<String?>? fatherName,
      Wrapped<String?>? district,
      Wrapped<String?>? state,
      Wrapped<String?>? pincode,
      Wrapped<String?>? address,
      Wrapped<String?>? previousVaccine,
      Wrapped<String?>? nextVaccine,
      Wrapped<String?>? previousAdministration,
      Wrapped<String?>? nextAdministration,
      Wrapped<String?>? allergies,
      Wrapped<String>? id,
      Wrapped<String>? rtype,
      Wrapped<int>? cstamp,
      Wrapped<int>? ustamp}) {
    return PatientObject(
        administredVaccines: (administredVaccines != null
            ? administredVaccines.value
            : this.administredVaccines),
        patientType:
            (patientType != null ? patientType.value : this.patientType),
        patientName:
            (patientName != null ? patientName.value : this.patientName),
        patientId: (patientId != null ? patientId.value : this.patientId),
        dob: (dob != null ? dob.value : this.dob),
        age: (age != null ? age.value : this.age),
        gender: (gender != null ? gender.value : this.gender),
        phone1: (phone1 != null ? phone1.value : this.phone1),
        phone2: (phone2 != null ? phone2.value : this.phone2),
        motherName: (motherName != null ? motherName.value : this.motherName),
        fatherName: (fatherName != null ? fatherName.value : this.fatherName),
        district: (district != null ? district.value : this.district),
        state: (state != null ? state.value : this.state),
        pincode: (pincode != null ? pincode.value : this.pincode),
        address: (address != null ? address.value : this.address),
        previousVaccine: (previousVaccine != null
            ? previousVaccine.value
            : this.previousVaccine),
        nextVaccine:
            (nextVaccine != null ? nextVaccine.value : this.nextVaccine),
        previousAdministration: (previousAdministration != null
            ? previousAdministration.value
            : this.previousAdministration),
        nextAdministration: (nextAdministration != null
            ? nextAdministration.value
            : this.nextAdministration),
        allergies: (allergies != null ? allergies.value : this.allergies),
        id: (id != null ? id.value : this.id),
        rtype: (rtype != null ? rtype.value : this.rtype),
        cstamp: (cstamp != null ? cstamp.value : this.cstamp),
        ustamp: (ustamp != null ? ustamp.value : this.ustamp));
  }
}

@JsonSerializable(explicitToJson: true)
class PatientRes {
  const PatientRes({
    this.patient,
    required this.ok,
    this.msg,
    this.trace,
  });

  factory PatientRes.fromJson(Map<String, dynamic> json) =>
      _$PatientResFromJson(json);

  static const toJsonFactory = _$PatientResToJson;
  Map<String, dynamic> toJson() => _$PatientResToJson(this);

  @JsonKey(name: 'patient', includeIfNull: false)
  final PatientObject? patient;
  @JsonKey(name: 'ok', includeIfNull: false)
  final bool ok;
  @JsonKey(name: 'msg', includeIfNull: false, defaultValue: '')
  final String? msg;
  @JsonKey(name: 'trace', includeIfNull: false, defaultValue: '')
  final String? trace;
  static const fromJsonFactory = _$PatientResFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PatientRes &&
            (identical(other.patient, patient) ||
                const DeepCollectionEquality()
                    .equals(other.patient, patient)) &&
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
      const DeepCollectionEquality().hash(patient) ^
      const DeepCollectionEquality().hash(ok) ^
      const DeepCollectionEquality().hash(msg) ^
      const DeepCollectionEquality().hash(trace) ^
      runtimeType.hashCode;
}

extension $PatientResExtension on PatientRes {
  PatientRes copyWith(
      {PatientObject? patient, bool? ok, String? msg, String? trace}) {
    return PatientRes(
        patient: patient ?? this.patient,
        ok: ok ?? this.ok,
        msg: msg ?? this.msg,
        trace: trace ?? this.trace);
  }

  PatientRes copyWithWrapped(
      {Wrapped<PatientObject?>? patient,
      Wrapped<bool>? ok,
      Wrapped<String?>? msg,
      Wrapped<String?>? trace}) {
    return PatientRes(
        patient: (patient != null ? patient.value : this.patient),
        ok: (ok != null ? ok.value : this.ok),
        msg: (msg != null ? msg.value : this.msg),
        trace: (trace != null ? trace.value : this.trace));
  }
}

@JsonSerializable(explicitToJson: true)
class PatientArray {
  const PatientArray({
    this.patients,
  });

  factory PatientArray.fromJson(Map<String, dynamic> json) =>
      _$PatientArrayFromJson(json);

  static const toJsonFactory = _$PatientArrayToJson;
  Map<String, dynamic> toJson() => _$PatientArrayToJson(this);

  @JsonKey(
      name: 'patients', includeIfNull: false, defaultValue: <PatientObject>[])
  final List<PatientObject>? patients;
  static const fromJsonFactory = _$PatientArrayFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PatientArray &&
            (identical(other.patients, patients) ||
                const DeepCollectionEquality()
                    .equals(other.patients, patients)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(patients) ^ runtimeType.hashCode;
}

extension $PatientArrayExtension on PatientArray {
  PatientArray copyWith({List<PatientObject>? patients}) {
    return PatientArray(patients: patients ?? this.patients);
  }

  PatientArray copyWithWrapped({Wrapped<List<PatientObject>?>? patients}) {
    return PatientArray(
        patients: (patients != null ? patients.value : this.patients));
  }
}

@JsonSerializable(explicitToJson: true)
class PatientArrayRes {
  const PatientArrayRes({
    required this.ok,
    this.msg,
    this.trace,
    required this.page,
    required this.size,
    required this.total,
    required this.maleCount,
    required this.femaleCount,
    required this.generalCount,
    required this.pregnantCount,
    required this.infantCount,
    this.patients,
  });

  factory PatientArrayRes.fromJson(Map<String, dynamic> json) =>
      _$PatientArrayResFromJson(json);

  static const toJsonFactory = _$PatientArrayResToJson;
  Map<String, dynamic> toJson() => _$PatientArrayResToJson(this);

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
  @JsonKey(name: 'male_count', includeIfNull: false)
  final int maleCount;
  @JsonKey(name: 'female_count', includeIfNull: false)
  final int femaleCount;
  @JsonKey(name: 'general_count', includeIfNull: false)
  final int generalCount;
  @JsonKey(name: 'pregnant_count', includeIfNull: false)
  final int pregnantCount;
  @JsonKey(name: 'infant_count', includeIfNull: false)
  final int infantCount;
  @JsonKey(
      name: 'patients', includeIfNull: false, defaultValue: <PatientObject>[])
  final List<PatientObject>? patients;
  static const fromJsonFactory = _$PatientArrayResFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PatientArrayRes &&
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
            (identical(other.maleCount, maleCount) ||
                const DeepCollectionEquality()
                    .equals(other.maleCount, maleCount)) &&
            (identical(other.femaleCount, femaleCount) ||
                const DeepCollectionEquality()
                    .equals(other.femaleCount, femaleCount)) &&
            (identical(other.generalCount, generalCount) ||
                const DeepCollectionEquality()
                    .equals(other.generalCount, generalCount)) &&
            (identical(other.pregnantCount, pregnantCount) ||
                const DeepCollectionEquality()
                    .equals(other.pregnantCount, pregnantCount)) &&
            (identical(other.infantCount, infantCount) ||
                const DeepCollectionEquality()
                    .equals(other.infantCount, infantCount)) &&
            (identical(other.patients, patients) ||
                const DeepCollectionEquality()
                    .equals(other.patients, patients)));
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
      const DeepCollectionEquality().hash(maleCount) ^
      const DeepCollectionEquality().hash(femaleCount) ^
      const DeepCollectionEquality().hash(generalCount) ^
      const DeepCollectionEquality().hash(pregnantCount) ^
      const DeepCollectionEquality().hash(infantCount) ^
      const DeepCollectionEquality().hash(patients) ^
      runtimeType.hashCode;
}

extension $PatientArrayResExtension on PatientArrayRes {
  PatientArrayRes copyWith(
      {bool? ok,
      String? msg,
      String? trace,
      int? page,
      int? size,
      int? total,
      int? maleCount,
      int? femaleCount,
      int? generalCount,
      int? pregnantCount,
      int? infantCount,
      List<PatientObject>? patients}) {
    return PatientArrayRes(
        ok: ok ?? this.ok,
        msg: msg ?? this.msg,
        trace: trace ?? this.trace,
        page: page ?? this.page,
        size: size ?? this.size,
        total: total ?? this.total,
        maleCount: maleCount ?? this.maleCount,
        femaleCount: femaleCount ?? this.femaleCount,
        generalCount: generalCount ?? this.generalCount,
        pregnantCount: pregnantCount ?? this.pregnantCount,
        infantCount: infantCount ?? this.infantCount,
        patients: patients ?? this.patients);
  }

  PatientArrayRes copyWithWrapped(
      {Wrapped<bool>? ok,
      Wrapped<String?>? msg,
      Wrapped<String?>? trace,
      Wrapped<int>? page,
      Wrapped<int>? size,
      Wrapped<int>? total,
      Wrapped<int>? maleCount,
      Wrapped<int>? femaleCount,
      Wrapped<int>? generalCount,
      Wrapped<int>? pregnantCount,
      Wrapped<int>? infantCount,
      Wrapped<List<PatientObject>?>? patients}) {
    return PatientArrayRes(
        ok: (ok != null ? ok.value : this.ok),
        msg: (msg != null ? msg.value : this.msg),
        trace: (trace != null ? trace.value : this.trace),
        page: (page != null ? page.value : this.page),
        size: (size != null ? size.value : this.size),
        total: (total != null ? total.value : this.total),
        maleCount: (maleCount != null ? maleCount.value : this.maleCount),
        femaleCount:
            (femaleCount != null ? femaleCount.value : this.femaleCount),
        generalCount:
            (generalCount != null ? generalCount.value : this.generalCount),
        pregnantCount:
            (pregnantCount != null ? pregnantCount.value : this.pregnantCount),
        infantCount:
            (infantCount != null ? infantCount.value : this.infantCount),
        patients: (patients != null ? patients.value : this.patients));
  }
}

@JsonSerializable(explicitToJson: true)
class Vaccine {
  const Vaccine({
    required this.vaccineName,
    required this.quantity,
    this.batchNo,
    this.brandName,
    required this.manufactDate,
    required this.expireDate,
    this.dosage,
    this.storageCondition,
  });

  factory Vaccine.fromJson(Map<String, dynamic> json) =>
      _$VaccineFromJson(json);

  static const toJsonFactory = _$VaccineToJson;
  Map<String, dynamic> toJson() => _$VaccineToJson(this);

  @JsonKey(name: 'vaccine_name', includeIfNull: false, defaultValue: '')
  final String vaccineName;
  @JsonKey(name: 'quantity', includeIfNull: false)
  final int quantity;
  @JsonKey(name: 'batch_no', includeIfNull: false, defaultValue: '')
  final String? batchNo;
  @JsonKey(name: 'brand_name', includeIfNull: false, defaultValue: '')
  final String? brandName;
  @JsonKey(name: 'manufact_date', includeIfNull: false, defaultValue: '')
  final String manufactDate;
  @JsonKey(name: 'expire_date', includeIfNull: false, defaultValue: '')
  final String expireDate;
  @JsonKey(name: 'dosage', includeIfNull: false)
  final int? dosage;
  @JsonKey(name: 'storage_condition', includeIfNull: false)
  final int? storageCondition;
  static const fromJsonFactory = _$VaccineFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Vaccine &&
            (identical(other.vaccineName, vaccineName) ||
                const DeepCollectionEquality()
                    .equals(other.vaccineName, vaccineName)) &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality()
                    .equals(other.quantity, quantity)) &&
            (identical(other.batchNo, batchNo) ||
                const DeepCollectionEquality()
                    .equals(other.batchNo, batchNo)) &&
            (identical(other.brandName, brandName) ||
                const DeepCollectionEquality()
                    .equals(other.brandName, brandName)) &&
            (identical(other.manufactDate, manufactDate) ||
                const DeepCollectionEquality()
                    .equals(other.manufactDate, manufactDate)) &&
            (identical(other.expireDate, expireDate) ||
                const DeepCollectionEquality()
                    .equals(other.expireDate, expireDate)) &&
            (identical(other.dosage, dosage) ||
                const DeepCollectionEquality().equals(other.dosage, dosage)) &&
            (identical(other.storageCondition, storageCondition) ||
                const DeepCollectionEquality()
                    .equals(other.storageCondition, storageCondition)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(vaccineName) ^
      const DeepCollectionEquality().hash(quantity) ^
      const DeepCollectionEquality().hash(batchNo) ^
      const DeepCollectionEquality().hash(brandName) ^
      const DeepCollectionEquality().hash(manufactDate) ^
      const DeepCollectionEquality().hash(expireDate) ^
      const DeepCollectionEquality().hash(dosage) ^
      const DeepCollectionEquality().hash(storageCondition) ^
      runtimeType.hashCode;
}

extension $VaccineExtension on Vaccine {
  Vaccine copyWith(
      {String? vaccineName,
      int? quantity,
      String? batchNo,
      String? brandName,
      String? manufactDate,
      String? expireDate,
      int? dosage,
      int? storageCondition}) {
    return Vaccine(
        vaccineName: vaccineName ?? this.vaccineName,
        quantity: quantity ?? this.quantity,
        batchNo: batchNo ?? this.batchNo,
        brandName: brandName ?? this.brandName,
        manufactDate: manufactDate ?? this.manufactDate,
        expireDate: expireDate ?? this.expireDate,
        dosage: dosage ?? this.dosage,
        storageCondition: storageCondition ?? this.storageCondition);
  }

  Vaccine copyWithWrapped(
      {Wrapped<String>? vaccineName,
      Wrapped<int>? quantity,
      Wrapped<String?>? batchNo,
      Wrapped<String?>? brandName,
      Wrapped<String>? manufactDate,
      Wrapped<String>? expireDate,
      Wrapped<int?>? dosage,
      Wrapped<int?>? storageCondition}) {
    return Vaccine(
        vaccineName:
            (vaccineName != null ? vaccineName.value : this.vaccineName),
        quantity: (quantity != null ? quantity.value : this.quantity),
        batchNo: (batchNo != null ? batchNo.value : this.batchNo),
        brandName: (brandName != null ? brandName.value : this.brandName),
        manufactDate:
            (manufactDate != null ? manufactDate.value : this.manufactDate),
        expireDate: (expireDate != null ? expireDate.value : this.expireDate),
        dosage: (dosage != null ? dosage.value : this.dosage),
        storageCondition: (storageCondition != null
            ? storageCondition.value
            : this.storageCondition));
  }
}

@JsonSerializable(explicitToJson: true)
class VaccineInfo {
  const VaccineInfo({
    required this.vaccineName,
    required this.quantity,
    this.batchNo,
    this.brandName,
    required this.manufactDate,
    required this.expireDate,
    this.dosage,
    this.storageCondition,
    required this.id,
    required this.rtype,
    required this.cstamp,
    required this.ustamp,
  });

  factory VaccineInfo.fromJson(Map<String, dynamic> json) =>
      _$VaccineInfoFromJson(json);

  static const toJsonFactory = _$VaccineInfoToJson;
  Map<String, dynamic> toJson() => _$VaccineInfoToJson(this);

  @JsonKey(name: 'vaccine_name', includeIfNull: false, defaultValue: '')
  final String vaccineName;
  @JsonKey(name: 'quantity', includeIfNull: false)
  final int quantity;
  @JsonKey(name: 'batch_no', includeIfNull: false, defaultValue: '')
  final String? batchNo;
  @JsonKey(name: 'brand_name', includeIfNull: false, defaultValue: '')
  final String? brandName;
  @JsonKey(name: 'manufact_date', includeIfNull: false, defaultValue: '')
  final String manufactDate;
  @JsonKey(name: 'expire_date', includeIfNull: false, defaultValue: '')
  final String expireDate;
  @JsonKey(name: 'dosage', includeIfNull: false)
  final int? dosage;
  @JsonKey(name: 'storage_condition', includeIfNull: false)
  final int? storageCondition;
  @JsonKey(name: 'id', includeIfNull: false, defaultValue: '')
  final String id;
  @JsonKey(name: 'rtype', includeIfNull: false, defaultValue: '')
  final String rtype;
  @JsonKey(name: 'cstamp', includeIfNull: false)
  final int cstamp;
  @JsonKey(name: 'ustamp', includeIfNull: false)
  final int ustamp;
  static const fromJsonFactory = _$VaccineInfoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is VaccineInfo &&
            (identical(other.vaccineName, vaccineName) ||
                const DeepCollectionEquality()
                    .equals(other.vaccineName, vaccineName)) &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality()
                    .equals(other.quantity, quantity)) &&
            (identical(other.batchNo, batchNo) ||
                const DeepCollectionEquality()
                    .equals(other.batchNo, batchNo)) &&
            (identical(other.brandName, brandName) ||
                const DeepCollectionEquality()
                    .equals(other.brandName, brandName)) &&
            (identical(other.manufactDate, manufactDate) ||
                const DeepCollectionEquality()
                    .equals(other.manufactDate, manufactDate)) &&
            (identical(other.expireDate, expireDate) ||
                const DeepCollectionEquality()
                    .equals(other.expireDate, expireDate)) &&
            (identical(other.dosage, dosage) ||
                const DeepCollectionEquality().equals(other.dosage, dosage)) &&
            (identical(other.storageCondition, storageCondition) ||
                const DeepCollectionEquality()
                    .equals(other.storageCondition, storageCondition)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.rtype, rtype) ||
                const DeepCollectionEquality().equals(other.rtype, rtype)) &&
            (identical(other.cstamp, cstamp) ||
                const DeepCollectionEquality().equals(other.cstamp, cstamp)) &&
            (identical(other.ustamp, ustamp) ||
                const DeepCollectionEquality().equals(other.ustamp, ustamp)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(vaccineName) ^
      const DeepCollectionEquality().hash(quantity) ^
      const DeepCollectionEquality().hash(batchNo) ^
      const DeepCollectionEquality().hash(brandName) ^
      const DeepCollectionEquality().hash(manufactDate) ^
      const DeepCollectionEquality().hash(expireDate) ^
      const DeepCollectionEquality().hash(dosage) ^
      const DeepCollectionEquality().hash(storageCondition) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(rtype) ^
      const DeepCollectionEquality().hash(cstamp) ^
      const DeepCollectionEquality().hash(ustamp) ^
      runtimeType.hashCode;
}

extension $VaccineInfoExtension on VaccineInfo {
  VaccineInfo copyWith(
      {String? vaccineName,
      int? quantity,
      String? batchNo,
      String? brandName,
      String? manufactDate,
      String? expireDate,
      int? dosage,
      int? storageCondition,
      String? id,
      String? rtype,
      int? cstamp,
      int? ustamp}) {
    return VaccineInfo(
        vaccineName: vaccineName ?? this.vaccineName,
        quantity: quantity ?? this.quantity,
        batchNo: batchNo ?? this.batchNo,
        brandName: brandName ?? this.brandName,
        manufactDate: manufactDate ?? this.manufactDate,
        expireDate: expireDate ?? this.expireDate,
        dosage: dosage ?? this.dosage,
        storageCondition: storageCondition ?? this.storageCondition,
        id: id ?? this.id,
        rtype: rtype ?? this.rtype,
        cstamp: cstamp ?? this.cstamp,
        ustamp: ustamp ?? this.ustamp);
  }

  VaccineInfo copyWithWrapped(
      {Wrapped<String>? vaccineName,
      Wrapped<int>? quantity,
      Wrapped<String?>? batchNo,
      Wrapped<String?>? brandName,
      Wrapped<String>? manufactDate,
      Wrapped<String>? expireDate,
      Wrapped<int?>? dosage,
      Wrapped<int?>? storageCondition,
      Wrapped<String>? id,
      Wrapped<String>? rtype,
      Wrapped<int>? cstamp,
      Wrapped<int>? ustamp}) {
    return VaccineInfo(
        vaccineName:
            (vaccineName != null ? vaccineName.value : this.vaccineName),
        quantity: (quantity != null ? quantity.value : this.quantity),
        batchNo: (batchNo != null ? batchNo.value : this.batchNo),
        brandName: (brandName != null ? brandName.value : this.brandName),
        manufactDate:
            (manufactDate != null ? manufactDate.value : this.manufactDate),
        expireDate: (expireDate != null ? expireDate.value : this.expireDate),
        dosage: (dosage != null ? dosage.value : this.dosage),
        storageCondition: (storageCondition != null
            ? storageCondition.value
            : this.storageCondition),
        id: (id != null ? id.value : this.id),
        rtype: (rtype != null ? rtype.value : this.rtype),
        cstamp: (cstamp != null ? cstamp.value : this.cstamp),
        ustamp: (ustamp != null ? ustamp.value : this.ustamp));
  }
}

@JsonSerializable(explicitToJson: true)
class VaccineRes {
  const VaccineRes({
    this.vaccine,
    required this.ok,
    this.msg,
    this.trace,
  });

  factory VaccineRes.fromJson(Map<String, dynamic> json) =>
      _$VaccineResFromJson(json);

  static const toJsonFactory = _$VaccineResToJson;
  Map<String, dynamic> toJson() => _$VaccineResToJson(this);

  @JsonKey(name: 'vaccine', includeIfNull: false)
  final VaccineInfo? vaccine;
  @JsonKey(name: 'ok', includeIfNull: false)
  final bool ok;
  @JsonKey(name: 'msg', includeIfNull: false, defaultValue: '')
  final String? msg;
  @JsonKey(name: 'trace', includeIfNull: false, defaultValue: '')
  final String? trace;
  static const fromJsonFactory = _$VaccineResFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is VaccineRes &&
            (identical(other.vaccine, vaccine) ||
                const DeepCollectionEquality()
                    .equals(other.vaccine, vaccine)) &&
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
      const DeepCollectionEquality().hash(vaccine) ^
      const DeepCollectionEquality().hash(ok) ^
      const DeepCollectionEquality().hash(msg) ^
      const DeepCollectionEquality().hash(trace) ^
      runtimeType.hashCode;
}

extension $VaccineResExtension on VaccineRes {
  VaccineRes copyWith(
      {VaccineInfo? vaccine, bool? ok, String? msg, String? trace}) {
    return VaccineRes(
        vaccine: vaccine ?? this.vaccine,
        ok: ok ?? this.ok,
        msg: msg ?? this.msg,
        trace: trace ?? this.trace);
  }

  VaccineRes copyWithWrapped(
      {Wrapped<VaccineInfo?>? vaccine,
      Wrapped<bool>? ok,
      Wrapped<String?>? msg,
      Wrapped<String?>? trace}) {
    return VaccineRes(
        vaccine: (vaccine != null ? vaccine.value : this.vaccine),
        ok: (ok != null ? ok.value : this.ok),
        msg: (msg != null ? msg.value : this.msg),
        trace: (trace != null ? trace.value : this.trace));
  }
}

@JsonSerializable(explicitToJson: true)
class VaccineObject {
  const VaccineObject({
    required this.availability,
    required this.daysLeft,
    required this.vaccineName,
    required this.quantity,
    this.batchNo,
    this.brandName,
    required this.manufactDate,
    required this.expireDate,
    this.dosage,
    this.storageCondition,
    required this.id,
    required this.rtype,
    required this.cstamp,
    required this.ustamp,
  });

  factory VaccineObject.fromJson(Map<String, dynamic> json) =>
      _$VaccineObjectFromJson(json);

  static const toJsonFactory = _$VaccineObjectToJson;
  Map<String, dynamic> toJson() => _$VaccineObjectToJson(this);

  @JsonKey(name: 'availability', includeIfNull: false, defaultValue: '')
  final String availability;
  @JsonKey(name: 'days_left', includeIfNull: false, defaultValue: '')
  final String daysLeft;
  @JsonKey(name: 'vaccine_name', includeIfNull: false, defaultValue: '')
  final String vaccineName;
  @JsonKey(name: 'quantity', includeIfNull: false)
  final int quantity;
  @JsonKey(name: 'batch_no', includeIfNull: false, defaultValue: '')
  final String? batchNo;
  @JsonKey(name: 'brand_name', includeIfNull: false, defaultValue: '')
  final String? brandName;
  @JsonKey(name: 'manufact_date', includeIfNull: false, defaultValue: '')
  final String manufactDate;
  @JsonKey(name: 'expire_date', includeIfNull: false, defaultValue: '')
  final String expireDate;
  @JsonKey(name: 'dosage', includeIfNull: false)
  final int? dosage;
  @JsonKey(name: 'storage_condition', includeIfNull: false)
  final int? storageCondition;
  @JsonKey(name: 'id', includeIfNull: false, defaultValue: '')
  final String id;
  @JsonKey(name: 'rtype', includeIfNull: false, defaultValue: '')
  final String rtype;
  @JsonKey(name: 'cstamp', includeIfNull: false)
  final int cstamp;
  @JsonKey(name: 'ustamp', includeIfNull: false)
  final int ustamp;
  static const fromJsonFactory = _$VaccineObjectFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is VaccineObject &&
            (identical(other.availability, availability) ||
                const DeepCollectionEquality()
                    .equals(other.availability, availability)) &&
            (identical(other.daysLeft, daysLeft) ||
                const DeepCollectionEquality()
                    .equals(other.daysLeft, daysLeft)) &&
            (identical(other.vaccineName, vaccineName) ||
                const DeepCollectionEquality()
                    .equals(other.vaccineName, vaccineName)) &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality()
                    .equals(other.quantity, quantity)) &&
            (identical(other.batchNo, batchNo) ||
                const DeepCollectionEquality()
                    .equals(other.batchNo, batchNo)) &&
            (identical(other.brandName, brandName) ||
                const DeepCollectionEquality()
                    .equals(other.brandName, brandName)) &&
            (identical(other.manufactDate, manufactDate) ||
                const DeepCollectionEquality()
                    .equals(other.manufactDate, manufactDate)) &&
            (identical(other.expireDate, expireDate) ||
                const DeepCollectionEquality()
                    .equals(other.expireDate, expireDate)) &&
            (identical(other.dosage, dosage) ||
                const DeepCollectionEquality().equals(other.dosage, dosage)) &&
            (identical(other.storageCondition, storageCondition) ||
                const DeepCollectionEquality()
                    .equals(other.storageCondition, storageCondition)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.rtype, rtype) ||
                const DeepCollectionEquality().equals(other.rtype, rtype)) &&
            (identical(other.cstamp, cstamp) ||
                const DeepCollectionEquality().equals(other.cstamp, cstamp)) &&
            (identical(other.ustamp, ustamp) ||
                const DeepCollectionEquality().equals(other.ustamp, ustamp)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(availability) ^
      const DeepCollectionEquality().hash(daysLeft) ^
      const DeepCollectionEquality().hash(vaccineName) ^
      const DeepCollectionEquality().hash(quantity) ^
      const DeepCollectionEquality().hash(batchNo) ^
      const DeepCollectionEquality().hash(brandName) ^
      const DeepCollectionEquality().hash(manufactDate) ^
      const DeepCollectionEquality().hash(expireDate) ^
      const DeepCollectionEquality().hash(dosage) ^
      const DeepCollectionEquality().hash(storageCondition) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(rtype) ^
      const DeepCollectionEquality().hash(cstamp) ^
      const DeepCollectionEquality().hash(ustamp) ^
      runtimeType.hashCode;
}

extension $VaccineObjectExtension on VaccineObject {
  VaccineObject copyWith(
      {String? availability,
      String? daysLeft,
      String? vaccineName,
      int? quantity,
      String? batchNo,
      String? brandName,
      String? manufactDate,
      String? expireDate,
      int? dosage,
      int? storageCondition,
      String? id,
      String? rtype,
      int? cstamp,
      int? ustamp}) {
    return VaccineObject(
        availability: availability ?? this.availability,
        daysLeft: daysLeft ?? this.daysLeft,
        vaccineName: vaccineName ?? this.vaccineName,
        quantity: quantity ?? this.quantity,
        batchNo: batchNo ?? this.batchNo,
        brandName: brandName ?? this.brandName,
        manufactDate: manufactDate ?? this.manufactDate,
        expireDate: expireDate ?? this.expireDate,
        dosage: dosage ?? this.dosage,
        storageCondition: storageCondition ?? this.storageCondition,
        id: id ?? this.id,
        rtype: rtype ?? this.rtype,
        cstamp: cstamp ?? this.cstamp,
        ustamp: ustamp ?? this.ustamp);
  }

  VaccineObject copyWithWrapped(
      {Wrapped<String>? availability,
      Wrapped<String>? daysLeft,
      Wrapped<String>? vaccineName,
      Wrapped<int>? quantity,
      Wrapped<String?>? batchNo,
      Wrapped<String?>? brandName,
      Wrapped<String>? manufactDate,
      Wrapped<String>? expireDate,
      Wrapped<int?>? dosage,
      Wrapped<int?>? storageCondition,
      Wrapped<String>? id,
      Wrapped<String>? rtype,
      Wrapped<int>? cstamp,
      Wrapped<int>? ustamp}) {
    return VaccineObject(
        availability:
            (availability != null ? availability.value : this.availability),
        daysLeft: (daysLeft != null ? daysLeft.value : this.daysLeft),
        vaccineName:
            (vaccineName != null ? vaccineName.value : this.vaccineName),
        quantity: (quantity != null ? quantity.value : this.quantity),
        batchNo: (batchNo != null ? batchNo.value : this.batchNo),
        brandName: (brandName != null ? brandName.value : this.brandName),
        manufactDate:
            (manufactDate != null ? manufactDate.value : this.manufactDate),
        expireDate: (expireDate != null ? expireDate.value : this.expireDate),
        dosage: (dosage != null ? dosage.value : this.dosage),
        storageCondition: (storageCondition != null
            ? storageCondition.value
            : this.storageCondition),
        id: (id != null ? id.value : this.id),
        rtype: (rtype != null ? rtype.value : this.rtype),
        cstamp: (cstamp != null ? cstamp.value : this.cstamp),
        ustamp: (ustamp != null ? ustamp.value : this.ustamp));
  }
}

@JsonSerializable(explicitToJson: true)
class VaccineGetRes {
  const VaccineGetRes({
    this.vaccine,
    required this.ok,
    this.msg,
    this.trace,
  });

  factory VaccineGetRes.fromJson(Map<String, dynamic> json) =>
      _$VaccineGetResFromJson(json);

  static const toJsonFactory = _$VaccineGetResToJson;
  Map<String, dynamic> toJson() => _$VaccineGetResToJson(this);

  @JsonKey(name: 'vaccine', includeIfNull: false)
  final VaccineObject? vaccine;
  @JsonKey(name: 'ok', includeIfNull: false)
  final bool ok;
  @JsonKey(name: 'msg', includeIfNull: false, defaultValue: '')
  final String? msg;
  @JsonKey(name: 'trace', includeIfNull: false, defaultValue: '')
  final String? trace;
  static const fromJsonFactory = _$VaccineGetResFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is VaccineGetRes &&
            (identical(other.vaccine, vaccine) ||
                const DeepCollectionEquality()
                    .equals(other.vaccine, vaccine)) &&
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
      const DeepCollectionEquality().hash(vaccine) ^
      const DeepCollectionEquality().hash(ok) ^
      const DeepCollectionEquality().hash(msg) ^
      const DeepCollectionEquality().hash(trace) ^
      runtimeType.hashCode;
}

extension $VaccineGetResExtension on VaccineGetRes {
  VaccineGetRes copyWith(
      {VaccineObject? vaccine, bool? ok, String? msg, String? trace}) {
    return VaccineGetRes(
        vaccine: vaccine ?? this.vaccine,
        ok: ok ?? this.ok,
        msg: msg ?? this.msg,
        trace: trace ?? this.trace);
  }

  VaccineGetRes copyWithWrapped(
      {Wrapped<VaccineObject?>? vaccine,
      Wrapped<bool>? ok,
      Wrapped<String?>? msg,
      Wrapped<String?>? trace}) {
    return VaccineGetRes(
        vaccine: (vaccine != null ? vaccine.value : this.vaccine),
        ok: (ok != null ? ok.value : this.ok),
        msg: (msg != null ? msg.value : this.msg),
        trace: (trace != null ? trace.value : this.trace));
  }
}

@JsonSerializable(explicitToJson: true)
class VaccineArray {
  const VaccineArray({
    this.vaccines,
  });

  factory VaccineArray.fromJson(Map<String, dynamic> json) =>
      _$VaccineArrayFromJson(json);

  static const toJsonFactory = _$VaccineArrayToJson;
  Map<String, dynamic> toJson() => _$VaccineArrayToJson(this);

  @JsonKey(
      name: 'vaccines', includeIfNull: false, defaultValue: <VaccineObject>[])
  final List<VaccineObject>? vaccines;
  static const fromJsonFactory = _$VaccineArrayFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is VaccineArray &&
            (identical(other.vaccines, vaccines) ||
                const DeepCollectionEquality()
                    .equals(other.vaccines, vaccines)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(vaccines) ^ runtimeType.hashCode;
}

extension $VaccineArrayExtension on VaccineArray {
  VaccineArray copyWith({List<VaccineObject>? vaccines}) {
    return VaccineArray(vaccines: vaccines ?? this.vaccines);
  }

  VaccineArray copyWithWrapped({Wrapped<List<VaccineObject>?>? vaccines}) {
    return VaccineArray(
        vaccines: (vaccines != null ? vaccines.value : this.vaccines));
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
    required this.availableCount,
    required this.shortageCount,
    required this.nonAvailableCount,
    this.vaccines,
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
  @JsonKey(name: 'available_count', includeIfNull: false)
  final int availableCount;
  @JsonKey(name: 'shortage_count', includeIfNull: false)
  final int shortageCount;
  @JsonKey(name: 'non_available_count', includeIfNull: false)
  final int nonAvailableCount;
  @JsonKey(
      name: 'vaccines', includeIfNull: false, defaultValue: <VaccineObject>[])
  final List<VaccineObject>? vaccines;
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
            (identical(other.availableCount, availableCount) ||
                const DeepCollectionEquality()
                    .equals(other.availableCount, availableCount)) &&
            (identical(other.shortageCount, shortageCount) ||
                const DeepCollectionEquality()
                    .equals(other.shortageCount, shortageCount)) &&
            (identical(other.nonAvailableCount, nonAvailableCount) ||
                const DeepCollectionEquality()
                    .equals(other.nonAvailableCount, nonAvailableCount)) &&
            (identical(other.vaccines, vaccines) ||
                const DeepCollectionEquality()
                    .equals(other.vaccines, vaccines)));
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
      const DeepCollectionEquality().hash(availableCount) ^
      const DeepCollectionEquality().hash(shortageCount) ^
      const DeepCollectionEquality().hash(nonAvailableCount) ^
      const DeepCollectionEquality().hash(vaccines) ^
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
      int? availableCount,
      int? shortageCount,
      int? nonAvailableCount,
      List<VaccineObject>? vaccines}) {
    return VaccineArrayRes(
        ok: ok ?? this.ok,
        msg: msg ?? this.msg,
        trace: trace ?? this.trace,
        page: page ?? this.page,
        size: size ?? this.size,
        total: total ?? this.total,
        availableCount: availableCount ?? this.availableCount,
        shortageCount: shortageCount ?? this.shortageCount,
        nonAvailableCount: nonAvailableCount ?? this.nonAvailableCount,
        vaccines: vaccines ?? this.vaccines);
  }

  VaccineArrayRes copyWithWrapped(
      {Wrapped<bool>? ok,
      Wrapped<String?>? msg,
      Wrapped<String?>? trace,
      Wrapped<int>? page,
      Wrapped<int>? size,
      Wrapped<int>? total,
      Wrapped<int>? availableCount,
      Wrapped<int>? shortageCount,
      Wrapped<int>? nonAvailableCount,
      Wrapped<List<VaccineObject>?>? vaccines}) {
    return VaccineArrayRes(
        ok: (ok != null ? ok.value : this.ok),
        msg: (msg != null ? msg.value : this.msg),
        trace: (trace != null ? trace.value : this.trace),
        page: (page != null ? page.value : this.page),
        size: (size != null ? size.value : this.size),
        total: (total != null ? total.value : this.total),
        availableCount: (availableCount != null
            ? availableCount.value
            : this.availableCount),
        shortageCount:
            (shortageCount != null ? shortageCount.value : this.shortageCount),
        nonAvailableCount: (nonAvailableCount != null
            ? nonAvailableCount.value
            : this.nonAvailableCount),
        vaccines: (vaccines != null ? vaccines.value : this.vaccines));
  }
}

@JsonSerializable(explicitToJson: true)
class Medicine {
  const Medicine({
    required this.medicineName,
    required this.quantity,
    this.batchNo,
    this.brandName,
    required this.manufactDate,
    required this.expireDate,
    this.storageCondition,
  });

  factory Medicine.fromJson(Map<String, dynamic> json) =>
      _$MedicineFromJson(json);

  static const toJsonFactory = _$MedicineToJson;
  Map<String, dynamic> toJson() => _$MedicineToJson(this);

  @JsonKey(name: 'medicine_name', includeIfNull: false, defaultValue: '')
  final String medicineName;
  @JsonKey(name: 'quantity', includeIfNull: false)
  final int quantity;
  @JsonKey(name: 'batch_no', includeIfNull: false, defaultValue: '')
  final String? batchNo;
  @JsonKey(name: 'brand_name', includeIfNull: false, defaultValue: '')
  final String? brandName;
  @JsonKey(name: 'manufact_date', includeIfNull: false, defaultValue: '')
  final String manufactDate;
  @JsonKey(name: 'expire_date', includeIfNull: false, defaultValue: '')
  final String expireDate;
  @JsonKey(name: 'storage_condition', includeIfNull: false)
  final int? storageCondition;
  static const fromJsonFactory = _$MedicineFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Medicine &&
            (identical(other.medicineName, medicineName) ||
                const DeepCollectionEquality()
                    .equals(other.medicineName, medicineName)) &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality()
                    .equals(other.quantity, quantity)) &&
            (identical(other.batchNo, batchNo) ||
                const DeepCollectionEquality()
                    .equals(other.batchNo, batchNo)) &&
            (identical(other.brandName, brandName) ||
                const DeepCollectionEquality()
                    .equals(other.brandName, brandName)) &&
            (identical(other.manufactDate, manufactDate) ||
                const DeepCollectionEquality()
                    .equals(other.manufactDate, manufactDate)) &&
            (identical(other.expireDate, expireDate) ||
                const DeepCollectionEquality()
                    .equals(other.expireDate, expireDate)) &&
            (identical(other.storageCondition, storageCondition) ||
                const DeepCollectionEquality()
                    .equals(other.storageCondition, storageCondition)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(medicineName) ^
      const DeepCollectionEquality().hash(quantity) ^
      const DeepCollectionEquality().hash(batchNo) ^
      const DeepCollectionEquality().hash(brandName) ^
      const DeepCollectionEquality().hash(manufactDate) ^
      const DeepCollectionEquality().hash(expireDate) ^
      const DeepCollectionEquality().hash(storageCondition) ^
      runtimeType.hashCode;
}

extension $MedicineExtension on Medicine {
  Medicine copyWith(
      {String? medicineName,
      int? quantity,
      String? batchNo,
      String? brandName,
      String? manufactDate,
      String? expireDate,
      int? storageCondition}) {
    return Medicine(
        medicineName: medicineName ?? this.medicineName,
        quantity: quantity ?? this.quantity,
        batchNo: batchNo ?? this.batchNo,
        brandName: brandName ?? this.brandName,
        manufactDate: manufactDate ?? this.manufactDate,
        expireDate: expireDate ?? this.expireDate,
        storageCondition: storageCondition ?? this.storageCondition);
  }

  Medicine copyWithWrapped(
      {Wrapped<String>? medicineName,
      Wrapped<int>? quantity,
      Wrapped<String?>? batchNo,
      Wrapped<String?>? brandName,
      Wrapped<String>? manufactDate,
      Wrapped<String>? expireDate,
      Wrapped<int?>? storageCondition}) {
    return Medicine(
        medicineName:
            (medicineName != null ? medicineName.value : this.medicineName),
        quantity: (quantity != null ? quantity.value : this.quantity),
        batchNo: (batchNo != null ? batchNo.value : this.batchNo),
        brandName: (brandName != null ? brandName.value : this.brandName),
        manufactDate:
            (manufactDate != null ? manufactDate.value : this.manufactDate),
        expireDate: (expireDate != null ? expireDate.value : this.expireDate),
        storageCondition: (storageCondition != null
            ? storageCondition.value
            : this.storageCondition));
  }
}

@JsonSerializable(explicitToJson: true)
class MedicineInfo {
  const MedicineInfo({
    required this.medicineName,
    required this.quantity,
    this.batchNo,
    this.brandName,
    required this.manufactDate,
    required this.expireDate,
    this.storageCondition,
    required this.id,
    required this.rtype,
    required this.cstamp,
    required this.ustamp,
  });

  factory MedicineInfo.fromJson(Map<String, dynamic> json) =>
      _$MedicineInfoFromJson(json);

  static const toJsonFactory = _$MedicineInfoToJson;
  Map<String, dynamic> toJson() => _$MedicineInfoToJson(this);

  @JsonKey(name: 'medicine_name', includeIfNull: false, defaultValue: '')
  final String medicineName;
  @JsonKey(name: 'quantity', includeIfNull: false)
  final int quantity;
  @JsonKey(name: 'batch_no', includeIfNull: false, defaultValue: '')
  final String? batchNo;
  @JsonKey(name: 'brand_name', includeIfNull: false, defaultValue: '')
  final String? brandName;
  @JsonKey(name: 'manufact_date', includeIfNull: false, defaultValue: '')
  final String manufactDate;
  @JsonKey(name: 'expire_date', includeIfNull: false, defaultValue: '')
  final String expireDate;
  @JsonKey(name: 'storage_condition', includeIfNull: false)
  final int? storageCondition;
  @JsonKey(name: 'id', includeIfNull: false, defaultValue: '')
  final String id;
  @JsonKey(name: 'rtype', includeIfNull: false, defaultValue: '')
  final String rtype;
  @JsonKey(name: 'cstamp', includeIfNull: false)
  final int cstamp;
  @JsonKey(name: 'ustamp', includeIfNull: false)
  final int ustamp;
  static const fromJsonFactory = _$MedicineInfoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MedicineInfo &&
            (identical(other.medicineName, medicineName) ||
                const DeepCollectionEquality()
                    .equals(other.medicineName, medicineName)) &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality()
                    .equals(other.quantity, quantity)) &&
            (identical(other.batchNo, batchNo) ||
                const DeepCollectionEquality()
                    .equals(other.batchNo, batchNo)) &&
            (identical(other.brandName, brandName) ||
                const DeepCollectionEquality()
                    .equals(other.brandName, brandName)) &&
            (identical(other.manufactDate, manufactDate) ||
                const DeepCollectionEquality()
                    .equals(other.manufactDate, manufactDate)) &&
            (identical(other.expireDate, expireDate) ||
                const DeepCollectionEquality()
                    .equals(other.expireDate, expireDate)) &&
            (identical(other.storageCondition, storageCondition) ||
                const DeepCollectionEquality()
                    .equals(other.storageCondition, storageCondition)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.rtype, rtype) ||
                const DeepCollectionEquality().equals(other.rtype, rtype)) &&
            (identical(other.cstamp, cstamp) ||
                const DeepCollectionEquality().equals(other.cstamp, cstamp)) &&
            (identical(other.ustamp, ustamp) ||
                const DeepCollectionEquality().equals(other.ustamp, ustamp)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(medicineName) ^
      const DeepCollectionEquality().hash(quantity) ^
      const DeepCollectionEquality().hash(batchNo) ^
      const DeepCollectionEquality().hash(brandName) ^
      const DeepCollectionEquality().hash(manufactDate) ^
      const DeepCollectionEquality().hash(expireDate) ^
      const DeepCollectionEquality().hash(storageCondition) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(rtype) ^
      const DeepCollectionEquality().hash(cstamp) ^
      const DeepCollectionEquality().hash(ustamp) ^
      runtimeType.hashCode;
}

extension $MedicineInfoExtension on MedicineInfo {
  MedicineInfo copyWith(
      {String? medicineName,
      int? quantity,
      String? batchNo,
      String? brandName,
      String? manufactDate,
      String? expireDate,
      int? storageCondition,
      String? id,
      String? rtype,
      int? cstamp,
      int? ustamp}) {
    return MedicineInfo(
        medicineName: medicineName ?? this.medicineName,
        quantity: quantity ?? this.quantity,
        batchNo: batchNo ?? this.batchNo,
        brandName: brandName ?? this.brandName,
        manufactDate: manufactDate ?? this.manufactDate,
        expireDate: expireDate ?? this.expireDate,
        storageCondition: storageCondition ?? this.storageCondition,
        id: id ?? this.id,
        rtype: rtype ?? this.rtype,
        cstamp: cstamp ?? this.cstamp,
        ustamp: ustamp ?? this.ustamp);
  }

  MedicineInfo copyWithWrapped(
      {Wrapped<String>? medicineName,
      Wrapped<int>? quantity,
      Wrapped<String?>? batchNo,
      Wrapped<String?>? brandName,
      Wrapped<String>? manufactDate,
      Wrapped<String>? expireDate,
      Wrapped<int?>? storageCondition,
      Wrapped<String>? id,
      Wrapped<String>? rtype,
      Wrapped<int>? cstamp,
      Wrapped<int>? ustamp}) {
    return MedicineInfo(
        medicineName:
            (medicineName != null ? medicineName.value : this.medicineName),
        quantity: (quantity != null ? quantity.value : this.quantity),
        batchNo: (batchNo != null ? batchNo.value : this.batchNo),
        brandName: (brandName != null ? brandName.value : this.brandName),
        manufactDate:
            (manufactDate != null ? manufactDate.value : this.manufactDate),
        expireDate: (expireDate != null ? expireDate.value : this.expireDate),
        storageCondition: (storageCondition != null
            ? storageCondition.value
            : this.storageCondition),
        id: (id != null ? id.value : this.id),
        rtype: (rtype != null ? rtype.value : this.rtype),
        cstamp: (cstamp != null ? cstamp.value : this.cstamp),
        ustamp: (ustamp != null ? ustamp.value : this.ustamp));
  }
}

@JsonSerializable(explicitToJson: true)
class MedicineRes {
  const MedicineRes({
    this.medicine,
    required this.ok,
    this.msg,
    this.trace,
  });

  factory MedicineRes.fromJson(Map<String, dynamic> json) =>
      _$MedicineResFromJson(json);

  static const toJsonFactory = _$MedicineResToJson;
  Map<String, dynamic> toJson() => _$MedicineResToJson(this);

  @JsonKey(name: 'medicine', includeIfNull: false)
  final MedicineInfo? medicine;
  @JsonKey(name: 'ok', includeIfNull: false)
  final bool ok;
  @JsonKey(name: 'msg', includeIfNull: false, defaultValue: '')
  final String? msg;
  @JsonKey(name: 'trace', includeIfNull: false, defaultValue: '')
  final String? trace;
  static const fromJsonFactory = _$MedicineResFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MedicineRes &&
            (identical(other.medicine, medicine) ||
                const DeepCollectionEquality()
                    .equals(other.medicine, medicine)) &&
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
      const DeepCollectionEquality().hash(medicine) ^
      const DeepCollectionEquality().hash(ok) ^
      const DeepCollectionEquality().hash(msg) ^
      const DeepCollectionEquality().hash(trace) ^
      runtimeType.hashCode;
}

extension $MedicineResExtension on MedicineRes {
  MedicineRes copyWith(
      {MedicineInfo? medicine, bool? ok, String? msg, String? trace}) {
    return MedicineRes(
        medicine: medicine ?? this.medicine,
        ok: ok ?? this.ok,
        msg: msg ?? this.msg,
        trace: trace ?? this.trace);
  }

  MedicineRes copyWithWrapped(
      {Wrapped<MedicineInfo?>? medicine,
      Wrapped<bool>? ok,
      Wrapped<String?>? msg,
      Wrapped<String?>? trace}) {
    return MedicineRes(
        medicine: (medicine != null ? medicine.value : this.medicine),
        ok: (ok != null ? ok.value : this.ok),
        msg: (msg != null ? msg.value : this.msg),
        trace: (trace != null ? trace.value : this.trace));
  }
}

@JsonSerializable(explicitToJson: true)
class MedicineObject {
  const MedicineObject({
    required this.availability,
    required this.daysLeft,
    required this.medicineName,
    required this.quantity,
    this.batchNo,
    this.brandName,
    required this.manufactDate,
    required this.expireDate,
    this.storageCondition,
    required this.id,
    required this.rtype,
    required this.cstamp,
    required this.ustamp,
  });

  factory MedicineObject.fromJson(Map<String, dynamic> json) =>
      _$MedicineObjectFromJson(json);

  static const toJsonFactory = _$MedicineObjectToJson;
  Map<String, dynamic> toJson() => _$MedicineObjectToJson(this);

  @JsonKey(name: 'availability', includeIfNull: false, defaultValue: '')
  final String availability;
  @JsonKey(name: 'days_left', includeIfNull: false, defaultValue: '')
  final String daysLeft;
  @JsonKey(name: 'medicine_name', includeIfNull: false, defaultValue: '')
  final String medicineName;
  @JsonKey(name: 'quantity', includeIfNull: false)
  final int quantity;
  @JsonKey(name: 'batch_no', includeIfNull: false, defaultValue: '')
  final String? batchNo;
  @JsonKey(name: 'brand_name', includeIfNull: false, defaultValue: '')
  final String? brandName;
  @JsonKey(name: 'manufact_date', includeIfNull: false, defaultValue: '')
  final String manufactDate;
  @JsonKey(name: 'expire_date', includeIfNull: false, defaultValue: '')
  final String expireDate;
  @JsonKey(name: 'storage_condition', includeIfNull: false)
  final int? storageCondition;
  @JsonKey(name: 'id', includeIfNull: false, defaultValue: '')
  final String id;
  @JsonKey(name: 'rtype', includeIfNull: false, defaultValue: '')
  final String rtype;
  @JsonKey(name: 'cstamp', includeIfNull: false)
  final int cstamp;
  @JsonKey(name: 'ustamp', includeIfNull: false)
  final int ustamp;
  static const fromJsonFactory = _$MedicineObjectFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MedicineObject &&
            (identical(other.availability, availability) ||
                const DeepCollectionEquality()
                    .equals(other.availability, availability)) &&
            (identical(other.daysLeft, daysLeft) ||
                const DeepCollectionEquality()
                    .equals(other.daysLeft, daysLeft)) &&
            (identical(other.medicineName, medicineName) ||
                const DeepCollectionEquality()
                    .equals(other.medicineName, medicineName)) &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality()
                    .equals(other.quantity, quantity)) &&
            (identical(other.batchNo, batchNo) ||
                const DeepCollectionEquality()
                    .equals(other.batchNo, batchNo)) &&
            (identical(other.brandName, brandName) ||
                const DeepCollectionEquality()
                    .equals(other.brandName, brandName)) &&
            (identical(other.manufactDate, manufactDate) ||
                const DeepCollectionEquality()
                    .equals(other.manufactDate, manufactDate)) &&
            (identical(other.expireDate, expireDate) ||
                const DeepCollectionEquality()
                    .equals(other.expireDate, expireDate)) &&
            (identical(other.storageCondition, storageCondition) ||
                const DeepCollectionEquality()
                    .equals(other.storageCondition, storageCondition)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.rtype, rtype) ||
                const DeepCollectionEquality().equals(other.rtype, rtype)) &&
            (identical(other.cstamp, cstamp) ||
                const DeepCollectionEquality().equals(other.cstamp, cstamp)) &&
            (identical(other.ustamp, ustamp) ||
                const DeepCollectionEquality().equals(other.ustamp, ustamp)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(availability) ^
      const DeepCollectionEquality().hash(daysLeft) ^
      const DeepCollectionEquality().hash(medicineName) ^
      const DeepCollectionEquality().hash(quantity) ^
      const DeepCollectionEquality().hash(batchNo) ^
      const DeepCollectionEquality().hash(brandName) ^
      const DeepCollectionEquality().hash(manufactDate) ^
      const DeepCollectionEquality().hash(expireDate) ^
      const DeepCollectionEquality().hash(storageCondition) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(rtype) ^
      const DeepCollectionEquality().hash(cstamp) ^
      const DeepCollectionEquality().hash(ustamp) ^
      runtimeType.hashCode;
}

extension $MedicineObjectExtension on MedicineObject {
  MedicineObject copyWith(
      {String? availability,
      String? daysLeft,
      String? medicineName,
      int? quantity,
      String? batchNo,
      String? brandName,
      String? manufactDate,
      String? expireDate,
      int? storageCondition,
      String? id,
      String? rtype,
      int? cstamp,
      int? ustamp}) {
    return MedicineObject(
        availability: availability ?? this.availability,
        daysLeft: daysLeft ?? this.daysLeft,
        medicineName: medicineName ?? this.medicineName,
        quantity: quantity ?? this.quantity,
        batchNo: batchNo ?? this.batchNo,
        brandName: brandName ?? this.brandName,
        manufactDate: manufactDate ?? this.manufactDate,
        expireDate: expireDate ?? this.expireDate,
        storageCondition: storageCondition ?? this.storageCondition,
        id: id ?? this.id,
        rtype: rtype ?? this.rtype,
        cstamp: cstamp ?? this.cstamp,
        ustamp: ustamp ?? this.ustamp);
  }

  MedicineObject copyWithWrapped(
      {Wrapped<String>? availability,
      Wrapped<String>? daysLeft,
      Wrapped<String>? medicineName,
      Wrapped<int>? quantity,
      Wrapped<String?>? batchNo,
      Wrapped<String?>? brandName,
      Wrapped<String>? manufactDate,
      Wrapped<String>? expireDate,
      Wrapped<int?>? storageCondition,
      Wrapped<String>? id,
      Wrapped<String>? rtype,
      Wrapped<int>? cstamp,
      Wrapped<int>? ustamp}) {
    return MedicineObject(
        availability:
            (availability != null ? availability.value : this.availability),
        daysLeft: (daysLeft != null ? daysLeft.value : this.daysLeft),
        medicineName:
            (medicineName != null ? medicineName.value : this.medicineName),
        quantity: (quantity != null ? quantity.value : this.quantity),
        batchNo: (batchNo != null ? batchNo.value : this.batchNo),
        brandName: (brandName != null ? brandName.value : this.brandName),
        manufactDate:
            (manufactDate != null ? manufactDate.value : this.manufactDate),
        expireDate: (expireDate != null ? expireDate.value : this.expireDate),
        storageCondition: (storageCondition != null
            ? storageCondition.value
            : this.storageCondition),
        id: (id != null ? id.value : this.id),
        rtype: (rtype != null ? rtype.value : this.rtype),
        cstamp: (cstamp != null ? cstamp.value : this.cstamp),
        ustamp: (ustamp != null ? ustamp.value : this.ustamp));
  }
}

@JsonSerializable(explicitToJson: true)
class MedicineGetRes {
  const MedicineGetRes({
    this.vaccine,
    required this.ok,
    this.msg,
    this.trace,
  });

  factory MedicineGetRes.fromJson(Map<String, dynamic> json) =>
      _$MedicineGetResFromJson(json);

  static const toJsonFactory = _$MedicineGetResToJson;
  Map<String, dynamic> toJson() => _$MedicineGetResToJson(this);

  @JsonKey(name: 'vaccine', includeIfNull: false)
  final MedicineObject? vaccine;
  @JsonKey(name: 'ok', includeIfNull: false)
  final bool ok;
  @JsonKey(name: 'msg', includeIfNull: false, defaultValue: '')
  final String? msg;
  @JsonKey(name: 'trace', includeIfNull: false, defaultValue: '')
  final String? trace;
  static const fromJsonFactory = _$MedicineGetResFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MedicineGetRes &&
            (identical(other.vaccine, vaccine) ||
                const DeepCollectionEquality()
                    .equals(other.vaccine, vaccine)) &&
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
      const DeepCollectionEquality().hash(vaccine) ^
      const DeepCollectionEquality().hash(ok) ^
      const DeepCollectionEquality().hash(msg) ^
      const DeepCollectionEquality().hash(trace) ^
      runtimeType.hashCode;
}

extension $MedicineGetResExtension on MedicineGetRes {
  MedicineGetRes copyWith(
      {MedicineObject? vaccine, bool? ok, String? msg, String? trace}) {
    return MedicineGetRes(
        vaccine: vaccine ?? this.vaccine,
        ok: ok ?? this.ok,
        msg: msg ?? this.msg,
        trace: trace ?? this.trace);
  }

  MedicineGetRes copyWithWrapped(
      {Wrapped<MedicineObject?>? vaccine,
      Wrapped<bool>? ok,
      Wrapped<String?>? msg,
      Wrapped<String?>? trace}) {
    return MedicineGetRes(
        vaccine: (vaccine != null ? vaccine.value : this.vaccine),
        ok: (ok != null ? ok.value : this.ok),
        msg: (msg != null ? msg.value : this.msg),
        trace: (trace != null ? trace.value : this.trace));
  }
}

@JsonSerializable(explicitToJson: true)
class MedicineArray {
  const MedicineArray({
    this.medicines,
  });

  factory MedicineArray.fromJson(Map<String, dynamic> json) =>
      _$MedicineArrayFromJson(json);

  static const toJsonFactory = _$MedicineArrayToJson;
  Map<String, dynamic> toJson() => _$MedicineArrayToJson(this);

  @JsonKey(
      name: 'medicines', includeIfNull: false, defaultValue: <MedicineObject>[])
  final List<MedicineObject>? medicines;
  static const fromJsonFactory = _$MedicineArrayFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MedicineArray &&
            (identical(other.medicines, medicines) ||
                const DeepCollectionEquality()
                    .equals(other.medicines, medicines)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(medicines) ^ runtimeType.hashCode;
}

extension $MedicineArrayExtension on MedicineArray {
  MedicineArray copyWith({List<MedicineObject>? medicines}) {
    return MedicineArray(medicines: medicines ?? this.medicines);
  }

  MedicineArray copyWithWrapped({Wrapped<List<MedicineObject>?>? medicines}) {
    return MedicineArray(
        medicines: (medicines != null ? medicines.value : this.medicines));
  }
}

@JsonSerializable(explicitToJson: true)
class MedicineArrayRes {
  const MedicineArrayRes({
    required this.ok,
    this.msg,
    this.trace,
    required this.page,
    required this.size,
    required this.total,
    required this.availableCount,
    required this.shortageCount,
    required this.nonAvailableCount,
    this.medicines,
  });

  factory MedicineArrayRes.fromJson(Map<String, dynamic> json) =>
      _$MedicineArrayResFromJson(json);

  static const toJsonFactory = _$MedicineArrayResToJson;
  Map<String, dynamic> toJson() => _$MedicineArrayResToJson(this);

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
  @JsonKey(name: 'available_count', includeIfNull: false)
  final int availableCount;
  @JsonKey(name: 'shortage_count', includeIfNull: false)
  final int shortageCount;
  @JsonKey(name: 'non_available_count', includeIfNull: false)
  final int nonAvailableCount;
  @JsonKey(
      name: 'medicines', includeIfNull: false, defaultValue: <MedicineObject>[])
  final List<MedicineObject>? medicines;
  static const fromJsonFactory = _$MedicineArrayResFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MedicineArrayRes &&
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
            (identical(other.availableCount, availableCount) ||
                const DeepCollectionEquality()
                    .equals(other.availableCount, availableCount)) &&
            (identical(other.shortageCount, shortageCount) ||
                const DeepCollectionEquality()
                    .equals(other.shortageCount, shortageCount)) &&
            (identical(other.nonAvailableCount, nonAvailableCount) ||
                const DeepCollectionEquality()
                    .equals(other.nonAvailableCount, nonAvailableCount)) &&
            (identical(other.medicines, medicines) ||
                const DeepCollectionEquality()
                    .equals(other.medicines, medicines)));
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
      const DeepCollectionEquality().hash(availableCount) ^
      const DeepCollectionEquality().hash(shortageCount) ^
      const DeepCollectionEquality().hash(nonAvailableCount) ^
      const DeepCollectionEquality().hash(medicines) ^
      runtimeType.hashCode;
}

extension $MedicineArrayResExtension on MedicineArrayRes {
  MedicineArrayRes copyWith(
      {bool? ok,
      String? msg,
      String? trace,
      int? page,
      int? size,
      int? total,
      int? availableCount,
      int? shortageCount,
      int? nonAvailableCount,
      List<MedicineObject>? medicines}) {
    return MedicineArrayRes(
        ok: ok ?? this.ok,
        msg: msg ?? this.msg,
        trace: trace ?? this.trace,
        page: page ?? this.page,
        size: size ?? this.size,
        total: total ?? this.total,
        availableCount: availableCount ?? this.availableCount,
        shortageCount: shortageCount ?? this.shortageCount,
        nonAvailableCount: nonAvailableCount ?? this.nonAvailableCount,
        medicines: medicines ?? this.medicines);
  }

  MedicineArrayRes copyWithWrapped(
      {Wrapped<bool>? ok,
      Wrapped<String?>? msg,
      Wrapped<String?>? trace,
      Wrapped<int>? page,
      Wrapped<int>? size,
      Wrapped<int>? total,
      Wrapped<int>? availableCount,
      Wrapped<int>? shortageCount,
      Wrapped<int>? nonAvailableCount,
      Wrapped<List<MedicineObject>?>? medicines}) {
    return MedicineArrayRes(
        ok: (ok != null ? ok.value : this.ok),
        msg: (msg != null ? msg.value : this.msg),
        trace: (trace != null ? trace.value : this.trace),
        page: (page != null ? page.value : this.page),
        size: (size != null ? size.value : this.size),
        total: (total != null ? total.value : this.total),
        availableCount: (availableCount != null
            ? availableCount.value
            : this.availableCount),
        shortageCount:
            (shortageCount != null ? shortageCount.value : this.shortageCount),
        nonAvailableCount: (nonAvailableCount != null
            ? nonAvailableCount.value
            : this.nonAvailableCount),
        medicines: (medicines != null ? medicines.value : this.medicines));
  }
}

@JsonSerializable(explicitToJson: true)
class Equipment {
  const Equipment({
    required this.equipmentName,
    required this.equipmentId,
    required this.quantity,
    required this.equipmentType,
    this.brandName,
  });

  factory Equipment.fromJson(Map<String, dynamic> json) =>
      _$EquipmentFromJson(json);

  static const toJsonFactory = _$EquipmentToJson;
  Map<String, dynamic> toJson() => _$EquipmentToJson(this);

  @JsonKey(name: 'equipment_name', includeIfNull: false, defaultValue: '')
  final String equipmentName;
  @JsonKey(name: 'equipment_id', includeIfNull: false, defaultValue: '')
  final String equipmentId;
  @JsonKey(name: 'quantity', includeIfNull: false)
  final int quantity;
  @JsonKey(name: 'equipment_type', includeIfNull: false, defaultValue: '')
  final String equipmentType;
  @JsonKey(name: 'brand_name', includeIfNull: false, defaultValue: '')
  final String? brandName;
  static const fromJsonFactory = _$EquipmentFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Equipment &&
            (identical(other.equipmentName, equipmentName) ||
                const DeepCollectionEquality()
                    .equals(other.equipmentName, equipmentName)) &&
            (identical(other.equipmentId, equipmentId) ||
                const DeepCollectionEquality()
                    .equals(other.equipmentId, equipmentId)) &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality()
                    .equals(other.quantity, quantity)) &&
            (identical(other.equipmentType, equipmentType) ||
                const DeepCollectionEquality()
                    .equals(other.equipmentType, equipmentType)) &&
            (identical(other.brandName, brandName) ||
                const DeepCollectionEquality()
                    .equals(other.brandName, brandName)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(equipmentName) ^
      const DeepCollectionEquality().hash(equipmentId) ^
      const DeepCollectionEquality().hash(quantity) ^
      const DeepCollectionEquality().hash(equipmentType) ^
      const DeepCollectionEquality().hash(brandName) ^
      runtimeType.hashCode;
}

extension $EquipmentExtension on Equipment {
  Equipment copyWith(
      {String? equipmentName,
      String? equipmentId,
      int? quantity,
      String? equipmentType,
      String? brandName}) {
    return Equipment(
        equipmentName: equipmentName ?? this.equipmentName,
        equipmentId: equipmentId ?? this.equipmentId,
        quantity: quantity ?? this.quantity,
        equipmentType: equipmentType ?? this.equipmentType,
        brandName: brandName ?? this.brandName);
  }

  Equipment copyWithWrapped(
      {Wrapped<String>? equipmentName,
      Wrapped<String>? equipmentId,
      Wrapped<int>? quantity,
      Wrapped<String>? equipmentType,
      Wrapped<String?>? brandName}) {
    return Equipment(
        equipmentName:
            (equipmentName != null ? equipmentName.value : this.equipmentName),
        equipmentId:
            (equipmentId != null ? equipmentId.value : this.equipmentId),
        quantity: (quantity != null ? quantity.value : this.quantity),
        equipmentType:
            (equipmentType != null ? equipmentType.value : this.equipmentType),
        brandName: (brandName != null ? brandName.value : this.brandName));
  }
}

@JsonSerializable(explicitToJson: true)
class EquipmentInfo {
  const EquipmentInfo({
    required this.equipmentName,
    required this.equipmentId,
    required this.quantity,
    required this.equipmentType,
    this.brandName,
    required this.id,
    required this.rtype,
    required this.cstamp,
    required this.ustamp,
  });

  factory EquipmentInfo.fromJson(Map<String, dynamic> json) =>
      _$EquipmentInfoFromJson(json);

  static const toJsonFactory = _$EquipmentInfoToJson;
  Map<String, dynamic> toJson() => _$EquipmentInfoToJson(this);

  @JsonKey(name: 'equipment_name', includeIfNull: false, defaultValue: '')
  final String equipmentName;
  @JsonKey(name: 'equipment_id', includeIfNull: false, defaultValue: '')
  final String equipmentId;
  @JsonKey(name: 'quantity', includeIfNull: false)
  final int quantity;
  @JsonKey(name: 'equipment_type', includeIfNull: false, defaultValue: '')
  final String equipmentType;
  @JsonKey(name: 'brand_name', includeIfNull: false, defaultValue: '')
  final String? brandName;
  @JsonKey(name: 'id', includeIfNull: false, defaultValue: '')
  final String id;
  @JsonKey(name: 'rtype', includeIfNull: false, defaultValue: '')
  final String rtype;
  @JsonKey(name: 'cstamp', includeIfNull: false)
  final int cstamp;
  @JsonKey(name: 'ustamp', includeIfNull: false)
  final int ustamp;
  static const fromJsonFactory = _$EquipmentInfoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EquipmentInfo &&
            (identical(other.equipmentName, equipmentName) ||
                const DeepCollectionEquality()
                    .equals(other.equipmentName, equipmentName)) &&
            (identical(other.equipmentId, equipmentId) ||
                const DeepCollectionEquality()
                    .equals(other.equipmentId, equipmentId)) &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality()
                    .equals(other.quantity, quantity)) &&
            (identical(other.equipmentType, equipmentType) ||
                const DeepCollectionEquality()
                    .equals(other.equipmentType, equipmentType)) &&
            (identical(other.brandName, brandName) ||
                const DeepCollectionEquality()
                    .equals(other.brandName, brandName)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.rtype, rtype) ||
                const DeepCollectionEquality().equals(other.rtype, rtype)) &&
            (identical(other.cstamp, cstamp) ||
                const DeepCollectionEquality().equals(other.cstamp, cstamp)) &&
            (identical(other.ustamp, ustamp) ||
                const DeepCollectionEquality().equals(other.ustamp, ustamp)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(equipmentName) ^
      const DeepCollectionEquality().hash(equipmentId) ^
      const DeepCollectionEquality().hash(quantity) ^
      const DeepCollectionEquality().hash(equipmentType) ^
      const DeepCollectionEquality().hash(brandName) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(rtype) ^
      const DeepCollectionEquality().hash(cstamp) ^
      const DeepCollectionEquality().hash(ustamp) ^
      runtimeType.hashCode;
}

extension $EquipmentInfoExtension on EquipmentInfo {
  EquipmentInfo copyWith(
      {String? equipmentName,
      String? equipmentId,
      int? quantity,
      String? equipmentType,
      String? brandName,
      String? id,
      String? rtype,
      int? cstamp,
      int? ustamp}) {
    return EquipmentInfo(
        equipmentName: equipmentName ?? this.equipmentName,
        equipmentId: equipmentId ?? this.equipmentId,
        quantity: quantity ?? this.quantity,
        equipmentType: equipmentType ?? this.equipmentType,
        brandName: brandName ?? this.brandName,
        id: id ?? this.id,
        rtype: rtype ?? this.rtype,
        cstamp: cstamp ?? this.cstamp,
        ustamp: ustamp ?? this.ustamp);
  }

  EquipmentInfo copyWithWrapped(
      {Wrapped<String>? equipmentName,
      Wrapped<String>? equipmentId,
      Wrapped<int>? quantity,
      Wrapped<String>? equipmentType,
      Wrapped<String?>? brandName,
      Wrapped<String>? id,
      Wrapped<String>? rtype,
      Wrapped<int>? cstamp,
      Wrapped<int>? ustamp}) {
    return EquipmentInfo(
        equipmentName:
            (equipmentName != null ? equipmentName.value : this.equipmentName),
        equipmentId:
            (equipmentId != null ? equipmentId.value : this.equipmentId),
        quantity: (quantity != null ? quantity.value : this.quantity),
        equipmentType:
            (equipmentType != null ? equipmentType.value : this.equipmentType),
        brandName: (brandName != null ? brandName.value : this.brandName),
        id: (id != null ? id.value : this.id),
        rtype: (rtype != null ? rtype.value : this.rtype),
        cstamp: (cstamp != null ? cstamp.value : this.cstamp),
        ustamp: (ustamp != null ? ustamp.value : this.ustamp));
  }
}

@JsonSerializable(explicitToJson: true)
class EquipmentRes {
  const EquipmentRes({
    this.equipment,
    required this.ok,
    this.msg,
    this.trace,
  });

  factory EquipmentRes.fromJson(Map<String, dynamic> json) =>
      _$EquipmentResFromJson(json);

  static const toJsonFactory = _$EquipmentResToJson;
  Map<String, dynamic> toJson() => _$EquipmentResToJson(this);

  @JsonKey(name: 'equipment', includeIfNull: false)
  final EquipmentInfo? equipment;
  @JsonKey(name: 'ok', includeIfNull: false)
  final bool ok;
  @JsonKey(name: 'msg', includeIfNull: false, defaultValue: '')
  final String? msg;
  @JsonKey(name: 'trace', includeIfNull: false, defaultValue: '')
  final String? trace;
  static const fromJsonFactory = _$EquipmentResFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EquipmentRes &&
            (identical(other.equipment, equipment) ||
                const DeepCollectionEquality()
                    .equals(other.equipment, equipment)) &&
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
      const DeepCollectionEquality().hash(equipment) ^
      const DeepCollectionEquality().hash(ok) ^
      const DeepCollectionEquality().hash(msg) ^
      const DeepCollectionEquality().hash(trace) ^
      runtimeType.hashCode;
}

extension $EquipmentResExtension on EquipmentRes {
  EquipmentRes copyWith(
      {EquipmentInfo? equipment, bool? ok, String? msg, String? trace}) {
    return EquipmentRes(
        equipment: equipment ?? this.equipment,
        ok: ok ?? this.ok,
        msg: msg ?? this.msg,
        trace: trace ?? this.trace);
  }

  EquipmentRes copyWithWrapped(
      {Wrapped<EquipmentInfo?>? equipment,
      Wrapped<bool>? ok,
      Wrapped<String?>? msg,
      Wrapped<String?>? trace}) {
    return EquipmentRes(
        equipment: (equipment != null ? equipment.value : this.equipment),
        ok: (ok != null ? ok.value : this.ok),
        msg: (msg != null ? msg.value : this.msg),
        trace: (trace != null ? trace.value : this.trace));
  }
}

@JsonSerializable(explicitToJson: true)
class EquipmentObject {
  const EquipmentObject({
    required this.availability,
    required this.equipmentName,
    required this.equipmentId,
    required this.quantity,
    required this.equipmentType,
    this.brandName,
    required this.id,
    required this.rtype,
    required this.cstamp,
    required this.ustamp,
  });

  factory EquipmentObject.fromJson(Map<String, dynamic> json) =>
      _$EquipmentObjectFromJson(json);

  static const toJsonFactory = _$EquipmentObjectToJson;
  Map<String, dynamic> toJson() => _$EquipmentObjectToJson(this);

  @JsonKey(name: 'availability', includeIfNull: false, defaultValue: '')
  final String availability;
  @JsonKey(name: 'equipment_name', includeIfNull: false, defaultValue: '')
  final String equipmentName;
  @JsonKey(name: 'equipment_id', includeIfNull: false, defaultValue: '')
  final String equipmentId;
  @JsonKey(name: 'quantity', includeIfNull: false)
  final int quantity;
  @JsonKey(name: 'equipment_type', includeIfNull: false, defaultValue: '')
  final String equipmentType;
  @JsonKey(name: 'brand_name', includeIfNull: false, defaultValue: '')
  final String? brandName;
  @JsonKey(name: 'id', includeIfNull: false, defaultValue: '')
  final String id;
  @JsonKey(name: 'rtype', includeIfNull: false, defaultValue: '')
  final String rtype;
  @JsonKey(name: 'cstamp', includeIfNull: false)
  final int cstamp;
  @JsonKey(name: 'ustamp', includeIfNull: false)
  final int ustamp;
  static const fromJsonFactory = _$EquipmentObjectFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EquipmentObject &&
            (identical(other.availability, availability) ||
                const DeepCollectionEquality()
                    .equals(other.availability, availability)) &&
            (identical(other.equipmentName, equipmentName) ||
                const DeepCollectionEquality()
                    .equals(other.equipmentName, equipmentName)) &&
            (identical(other.equipmentId, equipmentId) ||
                const DeepCollectionEquality()
                    .equals(other.equipmentId, equipmentId)) &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality()
                    .equals(other.quantity, quantity)) &&
            (identical(other.equipmentType, equipmentType) ||
                const DeepCollectionEquality()
                    .equals(other.equipmentType, equipmentType)) &&
            (identical(other.brandName, brandName) ||
                const DeepCollectionEquality()
                    .equals(other.brandName, brandName)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.rtype, rtype) ||
                const DeepCollectionEquality().equals(other.rtype, rtype)) &&
            (identical(other.cstamp, cstamp) ||
                const DeepCollectionEquality().equals(other.cstamp, cstamp)) &&
            (identical(other.ustamp, ustamp) ||
                const DeepCollectionEquality().equals(other.ustamp, ustamp)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(availability) ^
      const DeepCollectionEquality().hash(equipmentName) ^
      const DeepCollectionEquality().hash(equipmentId) ^
      const DeepCollectionEquality().hash(quantity) ^
      const DeepCollectionEquality().hash(equipmentType) ^
      const DeepCollectionEquality().hash(brandName) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(rtype) ^
      const DeepCollectionEquality().hash(cstamp) ^
      const DeepCollectionEquality().hash(ustamp) ^
      runtimeType.hashCode;
}

extension $EquipmentObjectExtension on EquipmentObject {
  EquipmentObject copyWith(
      {String? availability,
      String? equipmentName,
      String? equipmentId,
      int? quantity,
      String? equipmentType,
      String? brandName,
      String? id,
      String? rtype,
      int? cstamp,
      int? ustamp}) {
    return EquipmentObject(
        availability: availability ?? this.availability,
        equipmentName: equipmentName ?? this.equipmentName,
        equipmentId: equipmentId ?? this.equipmentId,
        quantity: quantity ?? this.quantity,
        equipmentType: equipmentType ?? this.equipmentType,
        brandName: brandName ?? this.brandName,
        id: id ?? this.id,
        rtype: rtype ?? this.rtype,
        cstamp: cstamp ?? this.cstamp,
        ustamp: ustamp ?? this.ustamp);
  }

  EquipmentObject copyWithWrapped(
      {Wrapped<String>? availability,
      Wrapped<String>? equipmentName,
      Wrapped<String>? equipmentId,
      Wrapped<int>? quantity,
      Wrapped<String>? equipmentType,
      Wrapped<String?>? brandName,
      Wrapped<String>? id,
      Wrapped<String>? rtype,
      Wrapped<int>? cstamp,
      Wrapped<int>? ustamp}) {
    return EquipmentObject(
        availability:
            (availability != null ? availability.value : this.availability),
        equipmentName:
            (equipmentName != null ? equipmentName.value : this.equipmentName),
        equipmentId:
            (equipmentId != null ? equipmentId.value : this.equipmentId),
        quantity: (quantity != null ? quantity.value : this.quantity),
        equipmentType:
            (equipmentType != null ? equipmentType.value : this.equipmentType),
        brandName: (brandName != null ? brandName.value : this.brandName),
        id: (id != null ? id.value : this.id),
        rtype: (rtype != null ? rtype.value : this.rtype),
        cstamp: (cstamp != null ? cstamp.value : this.cstamp),
        ustamp: (ustamp != null ? ustamp.value : this.ustamp));
  }
}

@JsonSerializable(explicitToJson: true)
class EquipmentGetRes {
  const EquipmentGetRes({
    this.vaccine,
    required this.ok,
    this.msg,
    this.trace,
  });

  factory EquipmentGetRes.fromJson(Map<String, dynamic> json) =>
      _$EquipmentGetResFromJson(json);

  static const toJsonFactory = _$EquipmentGetResToJson;
  Map<String, dynamic> toJson() => _$EquipmentGetResToJson(this);

  @JsonKey(name: 'vaccine', includeIfNull: false)
  final EquipmentObject? vaccine;
  @JsonKey(name: 'ok', includeIfNull: false)
  final bool ok;
  @JsonKey(name: 'msg', includeIfNull: false, defaultValue: '')
  final String? msg;
  @JsonKey(name: 'trace', includeIfNull: false, defaultValue: '')
  final String? trace;
  static const fromJsonFactory = _$EquipmentGetResFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EquipmentGetRes &&
            (identical(other.vaccine, vaccine) ||
                const DeepCollectionEquality()
                    .equals(other.vaccine, vaccine)) &&
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
      const DeepCollectionEquality().hash(vaccine) ^
      const DeepCollectionEquality().hash(ok) ^
      const DeepCollectionEquality().hash(msg) ^
      const DeepCollectionEquality().hash(trace) ^
      runtimeType.hashCode;
}

extension $EquipmentGetResExtension on EquipmentGetRes {
  EquipmentGetRes copyWith(
      {EquipmentObject? vaccine, bool? ok, String? msg, String? trace}) {
    return EquipmentGetRes(
        vaccine: vaccine ?? this.vaccine,
        ok: ok ?? this.ok,
        msg: msg ?? this.msg,
        trace: trace ?? this.trace);
  }

  EquipmentGetRes copyWithWrapped(
      {Wrapped<EquipmentObject?>? vaccine,
      Wrapped<bool>? ok,
      Wrapped<String?>? msg,
      Wrapped<String?>? trace}) {
    return EquipmentGetRes(
        vaccine: (vaccine != null ? vaccine.value : this.vaccine),
        ok: (ok != null ? ok.value : this.ok),
        msg: (msg != null ? msg.value : this.msg),
        trace: (trace != null ? trace.value : this.trace));
  }
}

@JsonSerializable(explicitToJson: true)
class EquipmentArray {
  const EquipmentArray({
    this.equipments,
  });

  factory EquipmentArray.fromJson(Map<String, dynamic> json) =>
      _$EquipmentArrayFromJson(json);

  static const toJsonFactory = _$EquipmentArrayToJson;
  Map<String, dynamic> toJson() => _$EquipmentArrayToJson(this);

  @JsonKey(
      name: 'equipments',
      includeIfNull: false,
      defaultValue: <EquipmentObject>[])
  final List<EquipmentObject>? equipments;
  static const fromJsonFactory = _$EquipmentArrayFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EquipmentArray &&
            (identical(other.equipments, equipments) ||
                const DeepCollectionEquality()
                    .equals(other.equipments, equipments)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(equipments) ^ runtimeType.hashCode;
}

extension $EquipmentArrayExtension on EquipmentArray {
  EquipmentArray copyWith({List<EquipmentObject>? equipments}) {
    return EquipmentArray(equipments: equipments ?? this.equipments);
  }

  EquipmentArray copyWithWrapped(
      {Wrapped<List<EquipmentObject>?>? equipments}) {
    return EquipmentArray(
        equipments: (equipments != null ? equipments.value : this.equipments));
  }
}

@JsonSerializable(explicitToJson: true)
class EquipmentArrayRes {
  const EquipmentArrayRes({
    required this.ok,
    this.msg,
    this.trace,
    required this.page,
    required this.size,
    required this.total,
    required this.electronicsCount,
    required this.utensilsCount,
    required this.furnituresCount,
    this.equipments,
  });

  factory EquipmentArrayRes.fromJson(Map<String, dynamic> json) =>
      _$EquipmentArrayResFromJson(json);

  static const toJsonFactory = _$EquipmentArrayResToJson;
  Map<String, dynamic> toJson() => _$EquipmentArrayResToJson(this);

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
  @JsonKey(name: 'electronics_count', includeIfNull: false)
  final int electronicsCount;
  @JsonKey(name: 'utensils_count', includeIfNull: false)
  final int utensilsCount;
  @JsonKey(name: 'furnitures_count', includeIfNull: false)
  final int furnituresCount;
  @JsonKey(
      name: 'equipments',
      includeIfNull: false,
      defaultValue: <EquipmentObject>[])
  final List<EquipmentObject>? equipments;
  static const fromJsonFactory = _$EquipmentArrayResFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EquipmentArrayRes &&
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
            (identical(other.electronicsCount, electronicsCount) ||
                const DeepCollectionEquality()
                    .equals(other.electronicsCount, electronicsCount)) &&
            (identical(other.utensilsCount, utensilsCount) ||
                const DeepCollectionEquality()
                    .equals(other.utensilsCount, utensilsCount)) &&
            (identical(other.furnituresCount, furnituresCount) ||
                const DeepCollectionEquality()
                    .equals(other.furnituresCount, furnituresCount)) &&
            (identical(other.equipments, equipments) ||
                const DeepCollectionEquality()
                    .equals(other.equipments, equipments)));
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
      const DeepCollectionEquality().hash(electronicsCount) ^
      const DeepCollectionEquality().hash(utensilsCount) ^
      const DeepCollectionEquality().hash(furnituresCount) ^
      const DeepCollectionEquality().hash(equipments) ^
      runtimeType.hashCode;
}

extension $EquipmentArrayResExtension on EquipmentArrayRes {
  EquipmentArrayRes copyWith(
      {bool? ok,
      String? msg,
      String? trace,
      int? page,
      int? size,
      int? total,
      int? electronicsCount,
      int? utensilsCount,
      int? furnituresCount,
      List<EquipmentObject>? equipments}) {
    return EquipmentArrayRes(
        ok: ok ?? this.ok,
        msg: msg ?? this.msg,
        trace: trace ?? this.trace,
        page: page ?? this.page,
        size: size ?? this.size,
        total: total ?? this.total,
        electronicsCount: electronicsCount ?? this.electronicsCount,
        utensilsCount: utensilsCount ?? this.utensilsCount,
        furnituresCount: furnituresCount ?? this.furnituresCount,
        equipments: equipments ?? this.equipments);
  }

  EquipmentArrayRes copyWithWrapped(
      {Wrapped<bool>? ok,
      Wrapped<String?>? msg,
      Wrapped<String?>? trace,
      Wrapped<int>? page,
      Wrapped<int>? size,
      Wrapped<int>? total,
      Wrapped<int>? electronicsCount,
      Wrapped<int>? utensilsCount,
      Wrapped<int>? furnituresCount,
      Wrapped<List<EquipmentObject>?>? equipments}) {
    return EquipmentArrayRes(
        ok: (ok != null ? ok.value : this.ok),
        msg: (msg != null ? msg.value : this.msg),
        trace: (trace != null ? trace.value : this.trace),
        page: (page != null ? page.value : this.page),
        size: (size != null ? size.value : this.size),
        total: (total != null ? total.value : this.total),
        electronicsCount: (electronicsCount != null
            ? electronicsCount.value
            : this.electronicsCount),
        utensilsCount:
            (utensilsCount != null ? utensilsCount.value : this.utensilsCount),
        furnituresCount: (furnituresCount != null
            ? furnituresCount.value
            : this.furnituresCount),
        equipments: (equipments != null ? equipments.value : this.equipments));
  }
}

@JsonSerializable(explicitToJson: true)
class Notification {
  const Notification({
    required this.pid,
    required this.patientId,
    required this.patientName,
    this.previousVaccine,
    this.nextVaccine,
    this.phone,
    this.status,
    this.results,
    this.errors,
  });

  factory Notification.fromJson(Map<String, dynamic> json) =>
      _$NotificationFromJson(json);

  static const toJsonFactory = _$NotificationToJson;
  Map<String, dynamic> toJson() => _$NotificationToJson(this);

  @JsonKey(name: 'pid', includeIfNull: false, defaultValue: '')
  final String pid;
  @JsonKey(name: 'patient_id', includeIfNull: false, defaultValue: '')
  final String patientId;
  @JsonKey(name: 'patient_name', includeIfNull: false, defaultValue: '')
  final String patientName;
  @JsonKey(name: 'previous_vaccine', includeIfNull: false, defaultValue: '')
  final String? previousVaccine;
  @JsonKey(name: 'next_vaccine', includeIfNull: false, defaultValue: '')
  final String? nextVaccine;
  @JsonKey(name: 'phone', includeIfNull: false, defaultValue: '')
  final String? phone;
  @JsonKey(
    name: 'status',
    includeIfNull: false,
    toJson: notificationStatusNullableToJson,
    fromJson: notificationStatusNullableFromJson,
  )
  final enums.NotificationStatus? status;
  @JsonKey(name: 'results', includeIfNull: false, defaultValue: '')
  final String? results;
  @JsonKey(name: 'errors', includeIfNull: false, defaultValue: '')
  final String? errors;
  static const fromJsonFactory = _$NotificationFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Notification &&
            (identical(other.pid, pid) ||
                const DeepCollectionEquality().equals(other.pid, pid)) &&
            (identical(other.patientId, patientId) ||
                const DeepCollectionEquality()
                    .equals(other.patientId, patientId)) &&
            (identical(other.patientName, patientName) ||
                const DeepCollectionEquality()
                    .equals(other.patientName, patientName)) &&
            (identical(other.previousVaccine, previousVaccine) ||
                const DeepCollectionEquality()
                    .equals(other.previousVaccine, previousVaccine)) &&
            (identical(other.nextVaccine, nextVaccine) ||
                const DeepCollectionEquality()
                    .equals(other.nextVaccine, nextVaccine)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.results, results) ||
                const DeepCollectionEquality()
                    .equals(other.results, results)) &&
            (identical(other.errors, errors) ||
                const DeepCollectionEquality().equals(other.errors, errors)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(pid) ^
      const DeepCollectionEquality().hash(patientId) ^
      const DeepCollectionEquality().hash(patientName) ^
      const DeepCollectionEquality().hash(previousVaccine) ^
      const DeepCollectionEquality().hash(nextVaccine) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(results) ^
      const DeepCollectionEquality().hash(errors) ^
      runtimeType.hashCode;
}

extension $NotificationExtension on Notification {
  Notification copyWith(
      {String? pid,
      String? patientId,
      String? patientName,
      String? previousVaccine,
      String? nextVaccine,
      String? phone,
      enums.NotificationStatus? status,
      String? results,
      String? errors}) {
    return Notification(
        pid: pid ?? this.pid,
        patientId: patientId ?? this.patientId,
        patientName: patientName ?? this.patientName,
        previousVaccine: previousVaccine ?? this.previousVaccine,
        nextVaccine: nextVaccine ?? this.nextVaccine,
        phone: phone ?? this.phone,
        status: status ?? this.status,
        results: results ?? this.results,
        errors: errors ?? this.errors);
  }

  Notification copyWithWrapped(
      {Wrapped<String>? pid,
      Wrapped<String>? patientId,
      Wrapped<String>? patientName,
      Wrapped<String?>? previousVaccine,
      Wrapped<String?>? nextVaccine,
      Wrapped<String?>? phone,
      Wrapped<enums.NotificationStatus?>? status,
      Wrapped<String?>? results,
      Wrapped<String?>? errors}) {
    return Notification(
        pid: (pid != null ? pid.value : this.pid),
        patientId: (patientId != null ? patientId.value : this.patientId),
        patientName:
            (patientName != null ? patientName.value : this.patientName),
        previousVaccine: (previousVaccine != null
            ? previousVaccine.value
            : this.previousVaccine),
        nextVaccine:
            (nextVaccine != null ? nextVaccine.value : this.nextVaccine),
        phone: (phone != null ? phone.value : this.phone),
        status: (status != null ? status.value : this.status),
        results: (results != null ? results.value : this.results),
        errors: (errors != null ? errors.value : this.errors));
  }
}

@JsonSerializable(explicitToJson: true)
class NotificationInfo {
  const NotificationInfo({
    required this.pid,
    required this.patientId,
    required this.patientName,
    this.previousVaccine,
    this.nextVaccine,
    this.phone,
    this.status,
    this.results,
    this.errors,
    required this.id,
    required this.rtype,
    required this.cstamp,
    required this.ustamp,
  });

  factory NotificationInfo.fromJson(Map<String, dynamic> json) =>
      _$NotificationInfoFromJson(json);

  static const toJsonFactory = _$NotificationInfoToJson;
  Map<String, dynamic> toJson() => _$NotificationInfoToJson(this);

  @JsonKey(name: 'pid', includeIfNull: false, defaultValue: '')
  final String pid;
  @JsonKey(name: 'patient_id', includeIfNull: false, defaultValue: '')
  final String patientId;
  @JsonKey(name: 'patient_name', includeIfNull: false, defaultValue: '')
  final String patientName;
  @JsonKey(name: 'previous_vaccine', includeIfNull: false, defaultValue: '')
  final String? previousVaccine;
  @JsonKey(name: 'next_vaccine', includeIfNull: false, defaultValue: '')
  final String? nextVaccine;
  @JsonKey(name: 'phone', includeIfNull: false, defaultValue: '')
  final String? phone;
  @JsonKey(
    name: 'status',
    includeIfNull: false,
    toJson: notificationInfoStatusNullableToJson,
    fromJson: notificationInfoStatusNullableFromJson,
  )
  final enums.NotificationInfoStatus? status;
  @JsonKey(name: 'results', includeIfNull: false, defaultValue: '')
  final String? results;
  @JsonKey(name: 'errors', includeIfNull: false, defaultValue: '')
  final String? errors;
  @JsonKey(name: 'id', includeIfNull: false, defaultValue: '')
  final String id;
  @JsonKey(name: 'rtype', includeIfNull: false, defaultValue: '')
  final String rtype;
  @JsonKey(name: 'cstamp', includeIfNull: false)
  final int cstamp;
  @JsonKey(name: 'ustamp', includeIfNull: false)
  final int ustamp;
  static const fromJsonFactory = _$NotificationInfoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NotificationInfo &&
            (identical(other.pid, pid) ||
                const DeepCollectionEquality().equals(other.pid, pid)) &&
            (identical(other.patientId, patientId) ||
                const DeepCollectionEquality()
                    .equals(other.patientId, patientId)) &&
            (identical(other.patientName, patientName) ||
                const DeepCollectionEquality()
                    .equals(other.patientName, patientName)) &&
            (identical(other.previousVaccine, previousVaccine) ||
                const DeepCollectionEquality()
                    .equals(other.previousVaccine, previousVaccine)) &&
            (identical(other.nextVaccine, nextVaccine) ||
                const DeepCollectionEquality()
                    .equals(other.nextVaccine, nextVaccine)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.results, results) ||
                const DeepCollectionEquality()
                    .equals(other.results, results)) &&
            (identical(other.errors, errors) ||
                const DeepCollectionEquality().equals(other.errors, errors)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.rtype, rtype) ||
                const DeepCollectionEquality().equals(other.rtype, rtype)) &&
            (identical(other.cstamp, cstamp) ||
                const DeepCollectionEquality().equals(other.cstamp, cstamp)) &&
            (identical(other.ustamp, ustamp) ||
                const DeepCollectionEquality().equals(other.ustamp, ustamp)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(pid) ^
      const DeepCollectionEquality().hash(patientId) ^
      const DeepCollectionEquality().hash(patientName) ^
      const DeepCollectionEquality().hash(previousVaccine) ^
      const DeepCollectionEquality().hash(nextVaccine) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(results) ^
      const DeepCollectionEquality().hash(errors) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(rtype) ^
      const DeepCollectionEquality().hash(cstamp) ^
      const DeepCollectionEquality().hash(ustamp) ^
      runtimeType.hashCode;
}

extension $NotificationInfoExtension on NotificationInfo {
  NotificationInfo copyWith(
      {String? pid,
      String? patientId,
      String? patientName,
      String? previousVaccine,
      String? nextVaccine,
      String? phone,
      enums.NotificationInfoStatus? status,
      String? results,
      String? errors,
      String? id,
      String? rtype,
      int? cstamp,
      int? ustamp}) {
    return NotificationInfo(
        pid: pid ?? this.pid,
        patientId: patientId ?? this.patientId,
        patientName: patientName ?? this.patientName,
        previousVaccine: previousVaccine ?? this.previousVaccine,
        nextVaccine: nextVaccine ?? this.nextVaccine,
        phone: phone ?? this.phone,
        status: status ?? this.status,
        results: results ?? this.results,
        errors: errors ?? this.errors,
        id: id ?? this.id,
        rtype: rtype ?? this.rtype,
        cstamp: cstamp ?? this.cstamp,
        ustamp: ustamp ?? this.ustamp);
  }

  NotificationInfo copyWithWrapped(
      {Wrapped<String>? pid,
      Wrapped<String>? patientId,
      Wrapped<String>? patientName,
      Wrapped<String?>? previousVaccine,
      Wrapped<String?>? nextVaccine,
      Wrapped<String?>? phone,
      Wrapped<enums.NotificationInfoStatus?>? status,
      Wrapped<String?>? results,
      Wrapped<String?>? errors,
      Wrapped<String>? id,
      Wrapped<String>? rtype,
      Wrapped<int>? cstamp,
      Wrapped<int>? ustamp}) {
    return NotificationInfo(
        pid: (pid != null ? pid.value : this.pid),
        patientId: (patientId != null ? patientId.value : this.patientId),
        patientName:
            (patientName != null ? patientName.value : this.patientName),
        previousVaccine: (previousVaccine != null
            ? previousVaccine.value
            : this.previousVaccine),
        nextVaccine:
            (nextVaccine != null ? nextVaccine.value : this.nextVaccine),
        phone: (phone != null ? phone.value : this.phone),
        status: (status != null ? status.value : this.status),
        results: (results != null ? results.value : this.results),
        errors: (errors != null ? errors.value : this.errors),
        id: (id != null ? id.value : this.id),
        rtype: (rtype != null ? rtype.value : this.rtype),
        cstamp: (cstamp != null ? cstamp.value : this.cstamp),
        ustamp: (ustamp != null ? ustamp.value : this.ustamp));
  }
}

@JsonSerializable(explicitToJson: true)
class NotificationArray {
  const NotificationArray({
    this.notifications,
  });

  factory NotificationArray.fromJson(Map<String, dynamic> json) =>
      _$NotificationArrayFromJson(json);

  static const toJsonFactory = _$NotificationArrayToJson;
  Map<String, dynamic> toJson() => _$NotificationArrayToJson(this);

  @JsonKey(
      name: 'notifications',
      includeIfNull: false,
      defaultValue: <NotificationInfo>[])
  final List<NotificationInfo>? notifications;
  static const fromJsonFactory = _$NotificationArrayFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NotificationArray &&
            (identical(other.notifications, notifications) ||
                const DeepCollectionEquality()
                    .equals(other.notifications, notifications)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(notifications) ^ runtimeType.hashCode;
}

extension $NotificationArrayExtension on NotificationArray {
  NotificationArray copyWith({List<NotificationInfo>? notifications}) {
    return NotificationArray(
        notifications: notifications ?? this.notifications);
  }

  NotificationArray copyWithWrapped(
      {Wrapped<List<NotificationInfo>?>? notifications}) {
    return NotificationArray(
        notifications:
            (notifications != null ? notifications.value : this.notifications));
  }
}

@JsonSerializable(explicitToJson: true)
class NotificationArrayRes {
  const NotificationArrayRes({
    required this.ok,
    this.msg,
    this.trace,
    required this.page,
    required this.size,
    required this.total,
    this.notifications,
  });

  factory NotificationArrayRes.fromJson(Map<String, dynamic> json) =>
      _$NotificationArrayResFromJson(json);

  static const toJsonFactory = _$NotificationArrayResToJson;
  Map<String, dynamic> toJson() => _$NotificationArrayResToJson(this);

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
  @JsonKey(
      name: 'notifications',
      includeIfNull: false,
      defaultValue: <NotificationInfo>[])
  final List<NotificationInfo>? notifications;
  static const fromJsonFactory = _$NotificationArrayResFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NotificationArrayRes &&
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
            (identical(other.notifications, notifications) ||
                const DeepCollectionEquality()
                    .equals(other.notifications, notifications)));
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
      const DeepCollectionEquality().hash(notifications) ^
      runtimeType.hashCode;
}

extension $NotificationArrayResExtension on NotificationArrayRes {
  NotificationArrayRes copyWith(
      {bool? ok,
      String? msg,
      String? trace,
      int? page,
      int? size,
      int? total,
      List<NotificationInfo>? notifications}) {
    return NotificationArrayRes(
        ok: ok ?? this.ok,
        msg: msg ?? this.msg,
        trace: trace ?? this.trace,
        page: page ?? this.page,
        size: size ?? this.size,
        total: total ?? this.total,
        notifications: notifications ?? this.notifications);
  }

  NotificationArrayRes copyWithWrapped(
      {Wrapped<bool>? ok,
      Wrapped<String?>? msg,
      Wrapped<String?>? trace,
      Wrapped<int>? page,
      Wrapped<int>? size,
      Wrapped<int>? total,
      Wrapped<List<NotificationInfo>?>? notifications}) {
    return NotificationArrayRes(
        ok: (ok != null ? ok.value : this.ok),
        msg: (msg != null ? msg.value : this.msg),
        trace: (trace != null ? trace.value : this.trace),
        page: (page != null ? page.value : this.page),
        size: (size != null ? size.value : this.size),
        total: (total != null ? total.value : this.total),
        notifications:
            (notifications != null ? notifications.value : this.notifications));
  }
}

@JsonSerializable(explicitToJson: true)
class Schedule {
  const Schedule({
    required this.pid,
    required this.vaccineName,
  });

  factory Schedule.fromJson(Map<String, dynamic> json) =>
      _$ScheduleFromJson(json);

  static const toJsonFactory = _$ScheduleToJson;
  Map<String, dynamic> toJson() => _$ScheduleToJson(this);

  @JsonKey(name: 'pid', includeIfNull: false, defaultValue: '')
  final String pid;
  @JsonKey(name: 'vaccine_name', includeIfNull: false, defaultValue: '')
  final String vaccineName;
  static const fromJsonFactory = _$ScheduleFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Schedule &&
            (identical(other.pid, pid) ||
                const DeepCollectionEquality().equals(other.pid, pid)) &&
            (identical(other.vaccineName, vaccineName) ||
                const DeepCollectionEquality()
                    .equals(other.vaccineName, vaccineName)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(pid) ^
      const DeepCollectionEquality().hash(vaccineName) ^
      runtimeType.hashCode;
}

extension $ScheduleExtension on Schedule {
  Schedule copyWith({String? pid, String? vaccineName}) {
    return Schedule(
        pid: pid ?? this.pid, vaccineName: vaccineName ?? this.vaccineName);
  }

  Schedule copyWithWrapped(
      {Wrapped<String>? pid, Wrapped<String>? vaccineName}) {
    return Schedule(
        pid: (pid != null ? pid.value : this.pid),
        vaccineName:
            (vaccineName != null ? vaccineName.value : this.vaccineName));
  }
}

@JsonSerializable(explicitToJson: true)
class ScheduleRes {
  const ScheduleRes({
    this.patient,
    required this.ok,
    this.msg,
    this.trace,
  });

  factory ScheduleRes.fromJson(Map<String, dynamic> json) =>
      _$ScheduleResFromJson(json);

  static const toJsonFactory = _$ScheduleResToJson;
  Map<String, dynamic> toJson() => _$ScheduleResToJson(this);

  @JsonKey(name: 'patient', includeIfNull: false)
  final Object? patient;
  @JsonKey(name: 'ok', includeIfNull: false)
  final bool ok;
  @JsonKey(name: 'msg', includeIfNull: false, defaultValue: '')
  final String? msg;
  @JsonKey(name: 'trace', includeIfNull: false, defaultValue: '')
  final String? trace;
  static const fromJsonFactory = _$ScheduleResFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ScheduleRes &&
            (identical(other.patient, patient) ||
                const DeepCollectionEquality()
                    .equals(other.patient, patient)) &&
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
      const DeepCollectionEquality().hash(patient) ^
      const DeepCollectionEquality().hash(ok) ^
      const DeepCollectionEquality().hash(msg) ^
      const DeepCollectionEquality().hash(trace) ^
      runtimeType.hashCode;
}

extension $ScheduleResExtension on ScheduleRes {
  ScheduleRes copyWith(
      {Object? patient, bool? ok, String? msg, String? trace}) {
    return ScheduleRes(
        patient: patient ?? this.patient,
        ok: ok ?? this.ok,
        msg: msg ?? this.msg,
        trace: trace ?? this.trace);
  }

  ScheduleRes copyWithWrapped(
      {Wrapped<Object?>? patient,
      Wrapped<bool>? ok,
      Wrapped<String?>? msg,
      Wrapped<String?>? trace}) {
    return ScheduleRes(
        patient: (patient != null ? patient.value : this.patient),
        ok: (ok != null ? ok.value : this.ok),
        msg: (msg != null ? msg.value : this.msg),
        trace: (trace != null ? trace.value : this.trace));
  }
}

@JsonSerializable(explicitToJson: true)
class SchedulerRes {
  const SchedulerRes({
    this.vaccines,
    this.vaccinesDay,
    this.durations,
    this.scheduler,
  });

  factory SchedulerRes.fromJson(Map<String, dynamic> json) =>
      _$SchedulerResFromJson(json);

  static const toJsonFactory = _$SchedulerResToJson;
  Map<String, dynamic> toJson() => _$SchedulerResToJson(this);

  @JsonKey(name: 'vaccines', includeIfNull: false, defaultValue: <String>[])
  final List<String>? vaccines;
  @JsonKey(name: 'vaccines_day', includeIfNull: false)
  final Object? vaccinesDay;
  @JsonKey(name: 'durations', includeIfNull: false, defaultValue: <String>[])
  final List<String>? durations;
  @JsonKey(name: 'scheduler', includeIfNull: false, defaultValue: <Object>[])
  final List<Object>? scheduler;
  static const fromJsonFactory = _$SchedulerResFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SchedulerRes &&
            (identical(other.vaccines, vaccines) ||
                const DeepCollectionEquality()
                    .equals(other.vaccines, vaccines)) &&
            (identical(other.vaccinesDay, vaccinesDay) ||
                const DeepCollectionEquality()
                    .equals(other.vaccinesDay, vaccinesDay)) &&
            (identical(other.durations, durations) ||
                const DeepCollectionEquality()
                    .equals(other.durations, durations)) &&
            (identical(other.scheduler, scheduler) ||
                const DeepCollectionEquality()
                    .equals(other.scheduler, scheduler)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(vaccines) ^
      const DeepCollectionEquality().hash(vaccinesDay) ^
      const DeepCollectionEquality().hash(durations) ^
      const DeepCollectionEquality().hash(scheduler) ^
      runtimeType.hashCode;
}

extension $SchedulerResExtension on SchedulerRes {
  SchedulerRes copyWith(
      {List<String>? vaccines,
      Object? vaccinesDay,
      List<String>? durations,
      List<Object>? scheduler}) {
    return SchedulerRes(
        vaccines: vaccines ?? this.vaccines,
        vaccinesDay: vaccinesDay ?? this.vaccinesDay,
        durations: durations ?? this.durations,
        scheduler: scheduler ?? this.scheduler);
  }

  SchedulerRes copyWithWrapped(
      {Wrapped<List<String>?>? vaccines,
      Wrapped<Object?>? vaccinesDay,
      Wrapped<List<String>?>? durations,
      Wrapped<List<Object>?>? scheduler}) {
    return SchedulerRes(
        vaccines: (vaccines != null ? vaccines.value : this.vaccines),
        vaccinesDay:
            (vaccinesDay != null ? vaccinesDay.value : this.vaccinesDay),
        durations: (durations != null ? durations.value : this.durations),
        scheduler: (scheduler != null ? scheduler.value : this.scheduler));
  }
}

@JsonSerializable(explicitToJson: true)
class EntitiesCountInfo {
  const EntitiesCountInfo({
    this.patients,
    this.vaccines,
    this.medicines,
    this.equipments,
  });

  factory EntitiesCountInfo.fromJson(Map<String, dynamic> json) =>
      _$EntitiesCountInfoFromJson(json);

  static const toJsonFactory = _$EntitiesCountInfoToJson;
  Map<String, dynamic> toJson() => _$EntitiesCountInfoToJson(this);

  @JsonKey(name: 'patients', includeIfNull: false)
  final int? patients;
  @JsonKey(name: 'vaccines', includeIfNull: false)
  final int? vaccines;
  @JsonKey(name: 'medicines', includeIfNull: false)
  final int? medicines;
  @JsonKey(name: 'equipments', includeIfNull: false)
  final int? equipments;
  static const fromJsonFactory = _$EntitiesCountInfoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EntitiesCountInfo &&
            (identical(other.patients, patients) ||
                const DeepCollectionEquality()
                    .equals(other.patients, patients)) &&
            (identical(other.vaccines, vaccines) ||
                const DeepCollectionEquality()
                    .equals(other.vaccines, vaccines)) &&
            (identical(other.medicines, medicines) ||
                const DeepCollectionEquality()
                    .equals(other.medicines, medicines)) &&
            (identical(other.equipments, equipments) ||
                const DeepCollectionEquality()
                    .equals(other.equipments, equipments)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(patients) ^
      const DeepCollectionEquality().hash(vaccines) ^
      const DeepCollectionEquality().hash(medicines) ^
      const DeepCollectionEquality().hash(equipments) ^
      runtimeType.hashCode;
}

extension $EntitiesCountInfoExtension on EntitiesCountInfo {
  EntitiesCountInfo copyWith(
      {int? patients, int? vaccines, int? medicines, int? equipments}) {
    return EntitiesCountInfo(
        patients: patients ?? this.patients,
        vaccines: vaccines ?? this.vaccines,
        medicines: medicines ?? this.medicines,
        equipments: equipments ?? this.equipments);
  }

  EntitiesCountInfo copyWithWrapped(
      {Wrapped<int?>? patients,
      Wrapped<int?>? vaccines,
      Wrapped<int?>? medicines,
      Wrapped<int?>? equipments}) {
    return EntitiesCountInfo(
        patients: (patients != null ? patients.value : this.patients),
        vaccines: (vaccines != null ? vaccines.value : this.vaccines),
        medicines: (medicines != null ? medicines.value : this.medicines),
        equipments: (equipments != null ? equipments.value : this.equipments));
  }
}

@JsonSerializable(explicitToJson: true)
class EntitiesCountRes {
  const EntitiesCountRes({
    this.entities,
    required this.ok,
    this.msg,
    this.trace,
  });

  factory EntitiesCountRes.fromJson(Map<String, dynamic> json) =>
      _$EntitiesCountResFromJson(json);

  static const toJsonFactory = _$EntitiesCountResToJson;
  Map<String, dynamic> toJson() => _$EntitiesCountResToJson(this);

  @JsonKey(name: 'entities', includeIfNull: false)
  final EntitiesCountInfo? entities;
  @JsonKey(name: 'ok', includeIfNull: false)
  final bool ok;
  @JsonKey(name: 'msg', includeIfNull: false, defaultValue: '')
  final String? msg;
  @JsonKey(name: 'trace', includeIfNull: false, defaultValue: '')
  final String? trace;
  static const fromJsonFactory = _$EntitiesCountResFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EntitiesCountRes &&
            (identical(other.entities, entities) ||
                const DeepCollectionEquality()
                    .equals(other.entities, entities)) &&
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
      const DeepCollectionEquality().hash(entities) ^
      const DeepCollectionEquality().hash(ok) ^
      const DeepCollectionEquality().hash(msg) ^
      const DeepCollectionEquality().hash(trace) ^
      runtimeType.hashCode;
}

extension $EntitiesCountResExtension on EntitiesCountRes {
  EntitiesCountRes copyWith(
      {EntitiesCountInfo? entities, bool? ok, String? msg, String? trace}) {
    return EntitiesCountRes(
        entities: entities ?? this.entities,
        ok: ok ?? this.ok,
        msg: msg ?? this.msg,
        trace: trace ?? this.trace);
  }

  EntitiesCountRes copyWithWrapped(
      {Wrapped<EntitiesCountInfo?>? entities,
      Wrapped<bool>? ok,
      Wrapped<String?>? msg,
      Wrapped<String?>? trace}) {
    return EntitiesCountRes(
        entities: (entities != null ? entities.value : this.entities),
        ok: (ok != null ? ok.value : this.ok),
        msg: (msg != null ? msg.value : this.msg),
        trace: (trace != null ? trace.value : this.trace));
  }
}

@JsonSerializable(explicitToJson: true)
class StatisticsInfo {
  const StatisticsInfo({
    this.time,
    this.male,
    this.female,
  });

  factory StatisticsInfo.fromJson(Map<String, dynamic> json) =>
      _$StatisticsInfoFromJson(json);

  static const toJsonFactory = _$StatisticsInfoToJson;
  Map<String, dynamic> toJson() => _$StatisticsInfoToJson(this);

  @JsonKey(name: 'time', includeIfNull: false, defaultValue: '')
  final String? time;
  @JsonKey(name: 'male', includeIfNull: false)
  final int? male;
  @JsonKey(name: 'female', includeIfNull: false)
  final int? female;
  static const fromJsonFactory = _$StatisticsInfoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StatisticsInfo &&
            (identical(other.time, time) ||
                const DeepCollectionEquality().equals(other.time, time)) &&
            (identical(other.male, male) ||
                const DeepCollectionEquality().equals(other.male, male)) &&
            (identical(other.female, female) ||
                const DeepCollectionEquality().equals(other.female, female)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(time) ^
      const DeepCollectionEquality().hash(male) ^
      const DeepCollectionEquality().hash(female) ^
      runtimeType.hashCode;
}

extension $StatisticsInfoExtension on StatisticsInfo {
  StatisticsInfo copyWith({String? time, int? male, int? female}) {
    return StatisticsInfo(
        time: time ?? this.time,
        male: male ?? this.male,
        female: female ?? this.female);
  }

  StatisticsInfo copyWithWrapped(
      {Wrapped<String?>? time, Wrapped<int?>? male, Wrapped<int?>? female}) {
    return StatisticsInfo(
        time: (time != null ? time.value : this.time),
        male: (male != null ? male.value : this.male),
        female: (female != null ? female.value : this.female));
  }
}

@JsonSerializable(explicitToJson: true)
class StatisticsArray {
  const StatisticsArray({
    this.statistics,
  });

  factory StatisticsArray.fromJson(Map<String, dynamic> json) =>
      _$StatisticsArrayFromJson(json);

  static const toJsonFactory = _$StatisticsArrayToJson;
  Map<String, dynamic> toJson() => _$StatisticsArrayToJson(this);

  @JsonKey(
      name: 'statistics',
      includeIfNull: false,
      defaultValue: <StatisticsInfo>[])
  final List<StatisticsInfo>? statistics;
  static const fromJsonFactory = _$StatisticsArrayFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StatisticsArray &&
            (identical(other.statistics, statistics) ||
                const DeepCollectionEquality()
                    .equals(other.statistics, statistics)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(statistics) ^ runtimeType.hashCode;
}

extension $StatisticsArrayExtension on StatisticsArray {
  StatisticsArray copyWith({List<StatisticsInfo>? statistics}) {
    return StatisticsArray(statistics: statistics ?? this.statistics);
  }

  StatisticsArray copyWithWrapped(
      {Wrapped<List<StatisticsInfo>?>? statistics}) {
    return StatisticsArray(
        statistics: (statistics != null ? statistics.value : this.statistics));
  }
}

@JsonSerializable(explicitToJson: true)
class StatisticsArrayRes {
  const StatisticsArrayRes({
    required this.ok,
    this.msg,
    this.trace,
    this.statistics,
  });

  factory StatisticsArrayRes.fromJson(Map<String, dynamic> json) =>
      _$StatisticsArrayResFromJson(json);

  static const toJsonFactory = _$StatisticsArrayResToJson;
  Map<String, dynamic> toJson() => _$StatisticsArrayResToJson(this);

  @JsonKey(name: 'ok', includeIfNull: false)
  final bool ok;
  @JsonKey(name: 'msg', includeIfNull: false, defaultValue: '')
  final String? msg;
  @JsonKey(name: 'trace', includeIfNull: false, defaultValue: '')
  final String? trace;
  @JsonKey(
      name: 'statistics',
      includeIfNull: false,
      defaultValue: <StatisticsInfo>[])
  final List<StatisticsInfo>? statistics;
  static const fromJsonFactory = _$StatisticsArrayResFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StatisticsArrayRes &&
            (identical(other.ok, ok) ||
                const DeepCollectionEquality().equals(other.ok, ok)) &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)) &&
            (identical(other.trace, trace) ||
                const DeepCollectionEquality().equals(other.trace, trace)) &&
            (identical(other.statistics, statistics) ||
                const DeepCollectionEquality()
                    .equals(other.statistics, statistics)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(ok) ^
      const DeepCollectionEquality().hash(msg) ^
      const DeepCollectionEquality().hash(trace) ^
      const DeepCollectionEquality().hash(statistics) ^
      runtimeType.hashCode;
}

extension $StatisticsArrayResExtension on StatisticsArrayRes {
  StatisticsArrayRes copyWith(
      {bool? ok,
      String? msg,
      String? trace,
      List<StatisticsInfo>? statistics}) {
    return StatisticsArrayRes(
        ok: ok ?? this.ok,
        msg: msg ?? this.msg,
        trace: trace ?? this.trace,
        statistics: statistics ?? this.statistics);
  }

  StatisticsArrayRes copyWithWrapped(
      {Wrapped<bool>? ok,
      Wrapped<String?>? msg,
      Wrapped<String?>? trace,
      Wrapped<List<StatisticsInfo>?>? statistics}) {
    return StatisticsArrayRes(
        ok: (ok != null ? ok.value : this.ok),
        msg: (msg != null ? msg.value : this.msg),
        trace: (trace != null ? trace.value : this.trace),
        statistics: (statistics != null ? statistics.value : this.statistics));
  }
}

@JsonSerializable(explicitToJson: true)
class AppointmentInfo {
  const AppointmentInfo({
    this.patientName,
    this.gender,
    this.id,
    this.age,
  });

  factory AppointmentInfo.fromJson(Map<String, dynamic> json) =>
      _$AppointmentInfoFromJson(json);

  static const toJsonFactory = _$AppointmentInfoToJson;
  Map<String, dynamic> toJson() => _$AppointmentInfoToJson(this);

  @JsonKey(name: 'patient_name', includeIfNull: false, defaultValue: '')
  final String? patientName;
  @JsonKey(name: 'gender', includeIfNull: false, defaultValue: '')
  final String? gender;
  @JsonKey(name: 'id', includeIfNull: false, defaultValue: '')
  final String? id;
  @JsonKey(name: 'age', includeIfNull: false)
  final int? age;
  static const fromJsonFactory = _$AppointmentInfoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AppointmentInfo &&
            (identical(other.patientName, patientName) ||
                const DeepCollectionEquality()
                    .equals(other.patientName, patientName)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.age, age) ||
                const DeepCollectionEquality().equals(other.age, age)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(patientName) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(age) ^
      runtimeType.hashCode;
}

extension $AppointmentInfoExtension on AppointmentInfo {
  AppointmentInfo copyWith(
      {String? patientName, String? gender, String? id, int? age}) {
    return AppointmentInfo(
        patientName: patientName ?? this.patientName,
        gender: gender ?? this.gender,
        id: id ?? this.id,
        age: age ?? this.age);
  }

  AppointmentInfo copyWithWrapped(
      {Wrapped<String?>? patientName,
      Wrapped<String?>? gender,
      Wrapped<String?>? id,
      Wrapped<int?>? age}) {
    return AppointmentInfo(
        patientName:
            (patientName != null ? patientName.value : this.patientName),
        gender: (gender != null ? gender.value : this.gender),
        id: (id != null ? id.value : this.id),
        age: (age != null ? age.value : this.age));
  }
}

@JsonSerializable(explicitToJson: true)
class AppointmentTotalRes {
  const AppointmentTotalRes({
    this.total,
    this.male,
    this.female,
  });

  factory AppointmentTotalRes.fromJson(Map<String, dynamic> json) =>
      _$AppointmentTotalResFromJson(json);

  static const toJsonFactory = _$AppointmentTotalResToJson;
  Map<String, dynamic> toJson() => _$AppointmentTotalResToJson(this);

  @JsonKey(name: 'total', includeIfNull: false)
  final int? total;
  @JsonKey(name: 'male', includeIfNull: false)
  final int? male;
  @JsonKey(name: 'female', includeIfNull: false)
  final int? female;
  static const fromJsonFactory = _$AppointmentTotalResFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AppointmentTotalRes &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)) &&
            (identical(other.male, male) ||
                const DeepCollectionEquality().equals(other.male, male)) &&
            (identical(other.female, female) ||
                const DeepCollectionEquality().equals(other.female, female)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(total) ^
      const DeepCollectionEquality().hash(male) ^
      const DeepCollectionEquality().hash(female) ^
      runtimeType.hashCode;
}

extension $AppointmentTotalResExtension on AppointmentTotalRes {
  AppointmentTotalRes copyWith({int? total, int? male, int? female}) {
    return AppointmentTotalRes(
        total: total ?? this.total,
        male: male ?? this.male,
        female: female ?? this.female);
  }

  AppointmentTotalRes copyWithWrapped(
      {Wrapped<int?>? total, Wrapped<int?>? male, Wrapped<int?>? female}) {
    return AppointmentTotalRes(
        total: (total != null ? total.value : this.total),
        male: (male != null ? male.value : this.male),
        female: (female != null ? female.value : this.female));
  }
}

@JsonSerializable(explicitToJson: true)
class AppointmentArray {
  const AppointmentArray({
    this.appointments,
  });

  factory AppointmentArray.fromJson(Map<String, dynamic> json) =>
      _$AppointmentArrayFromJson(json);

  static const toJsonFactory = _$AppointmentArrayToJson;
  Map<String, dynamic> toJson() => _$AppointmentArrayToJson(this);

  @JsonKey(
      name: 'appointments',
      includeIfNull: false,
      defaultValue: <AppointmentInfo>[])
  final List<AppointmentInfo>? appointments;
  static const fromJsonFactory = _$AppointmentArrayFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AppointmentArray &&
            (identical(other.appointments, appointments) ||
                const DeepCollectionEquality()
                    .equals(other.appointments, appointments)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(appointments) ^ runtimeType.hashCode;
}

extension $AppointmentArrayExtension on AppointmentArray {
  AppointmentArray copyWith({List<AppointmentInfo>? appointments}) {
    return AppointmentArray(appointments: appointments ?? this.appointments);
  }

  AppointmentArray copyWithWrapped(
      {Wrapped<List<AppointmentInfo>?>? appointments}) {
    return AppointmentArray(
        appointments:
            (appointments != null ? appointments.value : this.appointments));
  }
}

@JsonSerializable(explicitToJson: true)
class AppointmentArrayRes {
  const AppointmentArrayRes({
    required this.ok,
    this.msg,
    this.trace,
    this.total,
    this.male,
    this.female,
    this.appointments,
  });

  factory AppointmentArrayRes.fromJson(Map<String, dynamic> json) =>
      _$AppointmentArrayResFromJson(json);

  static const toJsonFactory = _$AppointmentArrayResToJson;
  Map<String, dynamic> toJson() => _$AppointmentArrayResToJson(this);

  @JsonKey(name: 'ok', includeIfNull: false)
  final bool ok;
  @JsonKey(name: 'msg', includeIfNull: false, defaultValue: '')
  final String? msg;
  @JsonKey(name: 'trace', includeIfNull: false, defaultValue: '')
  final String? trace;
  @JsonKey(name: 'total', includeIfNull: false)
  final int? total;
  @JsonKey(name: 'male', includeIfNull: false)
  final int? male;
  @JsonKey(name: 'female', includeIfNull: false)
  final int? female;
  @JsonKey(
      name: 'appointments',
      includeIfNull: false,
      defaultValue: <AppointmentInfo>[])
  final List<AppointmentInfo>? appointments;
  static const fromJsonFactory = _$AppointmentArrayResFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AppointmentArrayRes &&
            (identical(other.ok, ok) ||
                const DeepCollectionEquality().equals(other.ok, ok)) &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)) &&
            (identical(other.trace, trace) ||
                const DeepCollectionEquality().equals(other.trace, trace)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)) &&
            (identical(other.male, male) ||
                const DeepCollectionEquality().equals(other.male, male)) &&
            (identical(other.female, female) ||
                const DeepCollectionEquality().equals(other.female, female)) &&
            (identical(other.appointments, appointments) ||
                const DeepCollectionEquality()
                    .equals(other.appointments, appointments)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(ok) ^
      const DeepCollectionEquality().hash(msg) ^
      const DeepCollectionEquality().hash(trace) ^
      const DeepCollectionEquality().hash(total) ^
      const DeepCollectionEquality().hash(male) ^
      const DeepCollectionEquality().hash(female) ^
      const DeepCollectionEquality().hash(appointments) ^
      runtimeType.hashCode;
}

extension $AppointmentArrayResExtension on AppointmentArrayRes {
  AppointmentArrayRes copyWith(
      {bool? ok,
      String? msg,
      String? trace,
      int? total,
      int? male,
      int? female,
      List<AppointmentInfo>? appointments}) {
    return AppointmentArrayRes(
        ok: ok ?? this.ok,
        msg: msg ?? this.msg,
        trace: trace ?? this.trace,
        total: total ?? this.total,
        male: male ?? this.male,
        female: female ?? this.female,
        appointments: appointments ?? this.appointments);
  }

  AppointmentArrayRes copyWithWrapped(
      {Wrapped<bool>? ok,
      Wrapped<String?>? msg,
      Wrapped<String?>? trace,
      Wrapped<int?>? total,
      Wrapped<int?>? male,
      Wrapped<int?>? female,
      Wrapped<List<AppointmentInfo>?>? appointments}) {
    return AppointmentArrayRes(
        ok: (ok != null ? ok.value : this.ok),
        msg: (msg != null ? msg.value : this.msg),
        trace: (trace != null ? trace.value : this.trace),
        total: (total != null ? total.value : this.total),
        male: (male != null ? male.value : this.male),
        female: (female != null ? female.value : this.female),
        appointments:
            (appointments != null ? appointments.value : this.appointments));
  }
}

String? notificationStatusNullableToJson(
    enums.NotificationStatus? notificationStatus) {
  return notificationStatus?.value;
}

String? notificationStatusToJson(enums.NotificationStatus notificationStatus) {
  return notificationStatus.value;
}

enums.NotificationStatus notificationStatusFromJson(
  Object? notificationStatus, [
  enums.NotificationStatus? defaultValue,
]) {
  return enums.NotificationStatus.values
          .firstWhereOrNull((e) => e.value == notificationStatus) ??
      defaultValue ??
      enums.NotificationStatus.swaggerGeneratedUnknown;
}

enums.NotificationStatus? notificationStatusNullableFromJson(
  Object? notificationStatus, [
  enums.NotificationStatus? defaultValue,
]) {
  if (notificationStatus == null) {
    return null;
  }
  return enums.NotificationStatus.values
          .firstWhereOrNull((e) => e.value == notificationStatus) ??
      defaultValue;
}

String notificationStatusExplodedListToJson(
    List<enums.NotificationStatus>? notificationStatus) {
  return notificationStatus?.map((e) => e.value!).join(',') ?? '';
}

List<String> notificationStatusListToJson(
    List<enums.NotificationStatus>? notificationStatus) {
  if (notificationStatus == null) {
    return [];
  }

  return notificationStatus.map((e) => e.value!).toList();
}

List<enums.NotificationStatus> notificationStatusListFromJson(
  List? notificationStatus, [
  List<enums.NotificationStatus>? defaultValue,
]) {
  if (notificationStatus == null) {
    return defaultValue ?? [];
  }

  return notificationStatus
      .map((e) => notificationStatusFromJson(e.toString()))
      .toList();
}

List<enums.NotificationStatus>? notificationStatusNullableListFromJson(
  List? notificationStatus, [
  List<enums.NotificationStatus>? defaultValue,
]) {
  if (notificationStatus == null) {
    return defaultValue;
  }

  return notificationStatus
      .map((e) => notificationStatusFromJson(e.toString()))
      .toList();
}

String? notificationInfoStatusNullableToJson(
    enums.NotificationInfoStatus? notificationInfoStatus) {
  return notificationInfoStatus?.value;
}

String? notificationInfoStatusToJson(
    enums.NotificationInfoStatus notificationInfoStatus) {
  return notificationInfoStatus.value;
}

enums.NotificationInfoStatus notificationInfoStatusFromJson(
  Object? notificationInfoStatus, [
  enums.NotificationInfoStatus? defaultValue,
]) {
  return enums.NotificationInfoStatus.values
          .firstWhereOrNull((e) => e.value == notificationInfoStatus) ??
      defaultValue ??
      enums.NotificationInfoStatus.swaggerGeneratedUnknown;
}

enums.NotificationInfoStatus? notificationInfoStatusNullableFromJson(
  Object? notificationInfoStatus, [
  enums.NotificationInfoStatus? defaultValue,
]) {
  if (notificationInfoStatus == null) {
    return null;
  }
  return enums.NotificationInfoStatus.values
          .firstWhereOrNull((e) => e.value == notificationInfoStatus) ??
      defaultValue;
}

String notificationInfoStatusExplodedListToJson(
    List<enums.NotificationInfoStatus>? notificationInfoStatus) {
  return notificationInfoStatus?.map((e) => e.value!).join(',') ?? '';
}

List<String> notificationInfoStatusListToJson(
    List<enums.NotificationInfoStatus>? notificationInfoStatus) {
  if (notificationInfoStatus == null) {
    return [];
  }

  return notificationInfoStatus.map((e) => e.value!).toList();
}

List<enums.NotificationInfoStatus> notificationInfoStatusListFromJson(
  List? notificationInfoStatus, [
  List<enums.NotificationInfoStatus>? defaultValue,
]) {
  if (notificationInfoStatus == null) {
    return defaultValue ?? [];
  }

  return notificationInfoStatus
      .map((e) => notificationInfoStatusFromJson(e.toString()))
      .toList();
}

List<enums.NotificationInfoStatus>? notificationInfoStatusNullableListFromJson(
  List? notificationInfoStatus, [
  List<enums.NotificationInfoStatus>? defaultValue,
]) {
  if (notificationInfoStatus == null) {
    return defaultValue;
  }

  return notificationInfoStatus
      .map((e) => notificationInfoStatusFromJson(e.toString()))
      .toList();
}

String? dashboardGetEcountGetTshintNullableToJson(
    enums.DashboardGetEcountGetTshint? dashboardGetEcountGetTshint) {
  return dashboardGetEcountGetTshint?.value;
}

String? dashboardGetEcountGetTshintToJson(
    enums.DashboardGetEcountGetTshint dashboardGetEcountGetTshint) {
  return dashboardGetEcountGetTshint.value;
}

enums.DashboardGetEcountGetTshint dashboardGetEcountGetTshintFromJson(
  Object? dashboardGetEcountGetTshint, [
  enums.DashboardGetEcountGetTshint? defaultValue,
]) {
  return enums.DashboardGetEcountGetTshint.values
          .firstWhereOrNull((e) => e.value == dashboardGetEcountGetTshint) ??
      defaultValue ??
      enums.DashboardGetEcountGetTshint.swaggerGeneratedUnknown;
}

enums.DashboardGetEcountGetTshint? dashboardGetEcountGetTshintNullableFromJson(
  Object? dashboardGetEcountGetTshint, [
  enums.DashboardGetEcountGetTshint? defaultValue,
]) {
  if (dashboardGetEcountGetTshint == null) {
    return null;
  }
  return enums.DashboardGetEcountGetTshint.values
          .firstWhereOrNull((e) => e.value == dashboardGetEcountGetTshint) ??
      defaultValue;
}

String dashboardGetEcountGetTshintExplodedListToJson(
    List<enums.DashboardGetEcountGetTshint>? dashboardGetEcountGetTshint) {
  return dashboardGetEcountGetTshint?.map((e) => e.value!).join(',') ?? '';
}

List<String> dashboardGetEcountGetTshintListToJson(
    List<enums.DashboardGetEcountGetTshint>? dashboardGetEcountGetTshint) {
  if (dashboardGetEcountGetTshint == null) {
    return [];
  }

  return dashboardGetEcountGetTshint.map((e) => e.value!).toList();
}

List<enums.DashboardGetEcountGetTshint> dashboardGetEcountGetTshintListFromJson(
  List? dashboardGetEcountGetTshint, [
  List<enums.DashboardGetEcountGetTshint>? defaultValue,
]) {
  if (dashboardGetEcountGetTshint == null) {
    return defaultValue ?? [];
  }

  return dashboardGetEcountGetTshint
      .map((e) => dashboardGetEcountGetTshintFromJson(e.toString()))
      .toList();
}

List<enums.DashboardGetEcountGetTshint>?
    dashboardGetEcountGetTshintNullableListFromJson(
  List? dashboardGetEcountGetTshint, [
  List<enums.DashboardGetEcountGetTshint>? defaultValue,
]) {
  if (dashboardGetEcountGetTshint == null) {
    return defaultValue;
  }

  return dashboardGetEcountGetTshint
      .map((e) => dashboardGetEcountGetTshintFromJson(e.toString()))
      .toList();
}

String? dashboardGetStatisticsGetTshintNullableToJson(
    enums.DashboardGetStatisticsGetTshint? dashboardGetStatisticsGetTshint) {
  return dashboardGetStatisticsGetTshint?.value;
}

String? dashboardGetStatisticsGetTshintToJson(
    enums.DashboardGetStatisticsGetTshint dashboardGetStatisticsGetTshint) {
  return dashboardGetStatisticsGetTshint.value;
}

enums.DashboardGetStatisticsGetTshint dashboardGetStatisticsGetTshintFromJson(
  Object? dashboardGetStatisticsGetTshint, [
  enums.DashboardGetStatisticsGetTshint? defaultValue,
]) {
  return enums.DashboardGetStatisticsGetTshint.values.firstWhereOrNull(
          (e) => e.value == dashboardGetStatisticsGetTshint) ??
      defaultValue ??
      enums.DashboardGetStatisticsGetTshint.swaggerGeneratedUnknown;
}

enums.DashboardGetStatisticsGetTshint?
    dashboardGetStatisticsGetTshintNullableFromJson(
  Object? dashboardGetStatisticsGetTshint, [
  enums.DashboardGetStatisticsGetTshint? defaultValue,
]) {
  if (dashboardGetStatisticsGetTshint == null) {
    return null;
  }
  return enums.DashboardGetStatisticsGetTshint.values.firstWhereOrNull(
          (e) => e.value == dashboardGetStatisticsGetTshint) ??
      defaultValue;
}

String dashboardGetStatisticsGetTshintExplodedListToJson(
    List<enums.DashboardGetStatisticsGetTshint>?
        dashboardGetStatisticsGetTshint) {
  return dashboardGetStatisticsGetTshint?.map((e) => e.value!).join(',') ?? '';
}

List<String> dashboardGetStatisticsGetTshintListToJson(
    List<enums.DashboardGetStatisticsGetTshint>?
        dashboardGetStatisticsGetTshint) {
  if (dashboardGetStatisticsGetTshint == null) {
    return [];
  }

  return dashboardGetStatisticsGetTshint.map((e) => e.value!).toList();
}

List<enums.DashboardGetStatisticsGetTshint>
    dashboardGetStatisticsGetTshintListFromJson(
  List? dashboardGetStatisticsGetTshint, [
  List<enums.DashboardGetStatisticsGetTshint>? defaultValue,
]) {
  if (dashboardGetStatisticsGetTshint == null) {
    return defaultValue ?? [];
  }

  return dashboardGetStatisticsGetTshint
      .map((e) => dashboardGetStatisticsGetTshintFromJson(e.toString()))
      .toList();
}

List<enums.DashboardGetStatisticsGetTshint>?
    dashboardGetStatisticsGetTshintNullableListFromJson(
  List? dashboardGetStatisticsGetTshint, [
  List<enums.DashboardGetStatisticsGetTshint>? defaultValue,
]) {
  if (dashboardGetStatisticsGetTshint == null) {
    return defaultValue;
  }

  return dashboardGetStatisticsGetTshint
      .map((e) => dashboardGetStatisticsGetTshintFromJson(e.toString()))
      .toList();
}

String? notificationGetListGetSortNullableToJson(
    enums.NotificationGetListGetSort? notificationGetListGetSort) {
  return notificationGetListGetSort?.value;
}

String? notificationGetListGetSortToJson(
    enums.NotificationGetListGetSort notificationGetListGetSort) {
  return notificationGetListGetSort.value;
}

enums.NotificationGetListGetSort notificationGetListGetSortFromJson(
  Object? notificationGetListGetSort, [
  enums.NotificationGetListGetSort? defaultValue,
]) {
  return enums.NotificationGetListGetSort.values
          .firstWhereOrNull((e) => e.value == notificationGetListGetSort) ??
      defaultValue ??
      enums.NotificationGetListGetSort.swaggerGeneratedUnknown;
}

enums.NotificationGetListGetSort? notificationGetListGetSortNullableFromJson(
  Object? notificationGetListGetSort, [
  enums.NotificationGetListGetSort? defaultValue,
]) {
  if (notificationGetListGetSort == null) {
    return null;
  }
  return enums.NotificationGetListGetSort.values
          .firstWhereOrNull((e) => e.value == notificationGetListGetSort) ??
      defaultValue;
}

String notificationGetListGetSortExplodedListToJson(
    List<enums.NotificationGetListGetSort>? notificationGetListGetSort) {
  return notificationGetListGetSort?.map((e) => e.value!).join(',') ?? '';
}

List<String> notificationGetListGetSortListToJson(
    List<enums.NotificationGetListGetSort>? notificationGetListGetSort) {
  if (notificationGetListGetSort == null) {
    return [];
  }

  return notificationGetListGetSort.map((e) => e.value!).toList();
}

List<enums.NotificationGetListGetSort> notificationGetListGetSortListFromJson(
  List? notificationGetListGetSort, [
  List<enums.NotificationGetListGetSort>? defaultValue,
]) {
  if (notificationGetListGetSort == null) {
    return defaultValue ?? [];
  }

  return notificationGetListGetSort
      .map((e) => notificationGetListGetSortFromJson(e.toString()))
      .toList();
}

List<enums.NotificationGetListGetSort>?
    notificationGetListGetSortNullableListFromJson(
  List? notificationGetListGetSort, [
  List<enums.NotificationGetListGetSort>? defaultValue,
]) {
  if (notificationGetListGetSort == null) {
    return defaultValue;
  }

  return notificationGetListGetSort
      .map((e) => notificationGetListGetSortFromJson(e.toString()))
      .toList();
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
