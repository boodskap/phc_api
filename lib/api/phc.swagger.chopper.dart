//### GENERATED CODE, DO NOT EDIT ###

part of 'phc.swagger.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: type=lint
final class _$Phc extends Phc {
  _$Phc([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = Phc;

  @override
  Future<Response<ProfileRes>> _getProfile({String? token}) {
    final Uri $url = Uri.parse('/Profile/get/getprofile');
    final Map<String, String> $headers = {
      if (token != null) 'TOKEN': token,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<ProfileRes, ProfileRes>($request);
  }

  @override
  Future<Response<ProfileRes>> _setProfile({
    required Profile? body,
    String? token,
  }) {
    final Uri $url = Uri.parse('/Profile/post/setprofile');
    final Map<String, String> $headers = {
      if (token != null) 'TOKEN': token,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<ProfileRes, ProfileRes>($request);
  }

  @override
  Future<Response<EntitiesCountRes>> _entitiesCount({
    required String? tshint,
    String? begints,
    String? endts,
    String? token,
  }) {
    final Uri $url = Uri.parse('/Dashboard/get/ecount');
    final Map<String, dynamic> $params = <String, dynamic>{
      'tshint': tshint,
      'begints': begints,
      'endts': endts,
    };
    final Map<String, String> $headers = {
      if (token != null) 'TOKEN': token,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<EntitiesCountRes, EntitiesCountRes>($request);
  }

  @override
  Future<Response<StatisticsArrayRes>> _statistics({
    required String? tshint,
    String? begints,
    String? endts,
    String? token,
  }) {
    final Uri $url = Uri.parse('/Dashboard/get/statistics');
    final Map<String, dynamic> $params = <String, dynamic>{
      'tshint': tshint,
      'begints': begints,
      'endts': endts,
    };
    final Map<String, String> $headers = {
      if (token != null) 'TOKEN': token,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<StatisticsArrayRes, StatisticsArrayRes>($request);
  }

  @override
  Future<Response<AppointmentArrayRes>> _appointments({String? token}) {
    final Uri $url = Uri.parse('/Dashboard/get/appointments');
    final Map<String, String> $headers = {
      if (token != null) 'TOKEN': token,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<AppointmentArrayRes, AppointmentArrayRes>($request);
  }

  @override
  Future<Response<PatientRes>> _createPatient({
    required Patient? body,
    String? token,
  }) {
    final Uri $url = Uri.parse('/Patient/post/create');
    final Map<String, String> $headers = {
      if (token != null) 'TOKEN': token,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<PatientRes, PatientRes>($request);
  }

  @override
  Future<Response<PatientRes>> _updatePatient({
    required String? id,
    required Patient? body,
    String? token,
  }) {
    final Uri $url = Uri.parse('/Patient/post/update');
    final Map<String, dynamic> $params = <String, dynamic>{'id': id};
    final Map<String, String> $headers = {
      if (token != null) 'TOKEN': token,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      parameters: $params,
      headers: $headers,
    );
    return client.send<PatientRes, PatientRes>($request);
  }

  @override
  Future<Response<PatientArrayRes>> _listPatient({
    required ListReq? body,
    String? token,
  }) {
    final Uri $url = Uri.parse('/Patient/post/list');
    final Map<String, String> $headers = {
      if (token != null) 'TOKEN': token,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<PatientArrayRes, PatientArrayRes>($request);
  }

  @override
  Future<Response<PatientRes>> _getPatient({
    required String? id,
    String? token,
  }) {
    final Uri $url = Uri.parse('/Patient/get/get');
    final Map<String, dynamic> $params = <String, dynamic>{'id': id};
    final Map<String, String> $headers = {
      if (token != null) 'TOKEN': token,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<PatientRes, PatientRes>($request);
  }

  @override
  Future<Response<BaseResponse>> _deletePatient({
    required String? id,
    String? token,
  }) {
    final Uri $url = Uri.parse('/Patient/del/delete');
    final Map<String, dynamic> $params = <String, dynamic>{'id': id};
    final Map<String, String> $headers = {
      if (token != null) 'TOKEN': token,
    };
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<BaseResponse, BaseResponse>($request);
  }

  @override
  Future<Response<ScheduleRes>> _scheduleVaccine({
    required Schedule? body,
    String? token,
  }) {
    final Uri $url = Uri.parse('/Patient/post/schedule');
    final Map<String, String> $headers = {
      if (token != null) 'TOKEN': token,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<ScheduleRes, ScheduleRes>($request);
  }

  @override
  Future<Response<SchedulerRes>> _getVaccineScheduler({String? token}) {
    final Uri $url = Uri.parse('/Patient/get/getscheduler');
    final Map<String, String> $headers = {
      if (token != null) 'TOKEN': token,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<SchedulerRes, SchedulerRes>($request);
  }

  @override
  Future<Response<VaccineRes>> _createVaccine({
    required Vaccine? body,
    String? token,
  }) {
    final Uri $url = Uri.parse('/Vaccine/post/create');
    final Map<String, String> $headers = {
      if (token != null) 'TOKEN': token,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<VaccineRes, VaccineRes>($request);
  }

  @override
  Future<Response<VaccineRes>> _updateVaccine({
    required String? id,
    required Vaccine? body,
    String? token,
  }) {
    final Uri $url = Uri.parse('/Vaccine/post/update');
    final Map<String, dynamic> $params = <String, dynamic>{'id': id};
    final Map<String, String> $headers = {
      if (token != null) 'TOKEN': token,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      parameters: $params,
      headers: $headers,
    );
    return client.send<VaccineRes, VaccineRes>($request);
  }

  @override
  Future<Response<VaccineArrayRes>> _listVaccines({
    required ListReq? body,
    String? token,
  }) {
    final Uri $url = Uri.parse('/Vaccine/post/list');
    final Map<String, String> $headers = {
      if (token != null) 'TOKEN': token,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<VaccineArrayRes, VaccineArrayRes>($request);
  }

  @override
  Future<Response<VaccineGetRes>> _getVaccine({
    required String? id,
    String? token,
  }) {
    final Uri $url = Uri.parse('/Vaccine/get/get');
    final Map<String, dynamic> $params = <String, dynamic>{'id': id};
    final Map<String, String> $headers = {
      if (token != null) 'TOKEN': token,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<VaccineGetRes, VaccineGetRes>($request);
  }

  @override
  Future<Response<BaseResponse>> _deleteVaccine({
    required String? id,
    String? token,
  }) {
    final Uri $url = Uri.parse('/Vaccine/del/delete');
    final Map<String, dynamic> $params = <String, dynamic>{'id': id};
    final Map<String, String> $headers = {
      if (token != null) 'TOKEN': token,
    };
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<BaseResponse, BaseResponse>($request);
  }

  @override
  Future<Response<MedicineRes>> _createMedicine({
    required Medicine? body,
    String? token,
  }) {
    final Uri $url = Uri.parse('/Medicine/post/create');
    final Map<String, String> $headers = {
      if (token != null) 'TOKEN': token,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<MedicineRes, MedicineRes>($request);
  }

  @override
  Future<Response<MedicineRes>> _updateMedicine({
    required String? id,
    required Medicine? body,
    String? token,
  }) {
    final Uri $url = Uri.parse('/Medicine/post/update');
    final Map<String, dynamic> $params = <String, dynamic>{'id': id};
    final Map<String, String> $headers = {
      if (token != null) 'TOKEN': token,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      parameters: $params,
      headers: $headers,
    );
    return client.send<MedicineRes, MedicineRes>($request);
  }

  @override
  Future<Response<MedicineArrayRes>> _listMedicine({
    required ListReq? body,
    String? token,
  }) {
    final Uri $url = Uri.parse('/Medicine/post/list');
    final Map<String, String> $headers = {
      if (token != null) 'TOKEN': token,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<MedicineArrayRes, MedicineArrayRes>($request);
  }

  @override
  Future<Response<MedicineGetRes>> _getMedicine({
    required String? id,
    String? token,
  }) {
    final Uri $url = Uri.parse('/Medicine/get/get');
    final Map<String, dynamic> $params = <String, dynamic>{'id': id};
    final Map<String, String> $headers = {
      if (token != null) 'TOKEN': token,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<MedicineGetRes, MedicineGetRes>($request);
  }

  @override
  Future<Response<BaseResponse>> _deleteMedicine({
    required String? id,
    String? token,
  }) {
    final Uri $url = Uri.parse('/Medicine/del/delete');
    final Map<String, dynamic> $params = <String, dynamic>{'id': id};
    final Map<String, String> $headers = {
      if (token != null) 'TOKEN': token,
    };
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<BaseResponse, BaseResponse>($request);
  }

  @override
  Future<Response<EquipmentRes>> _createEquipment({
    required Equipment? body,
    String? token,
  }) {
    final Uri $url = Uri.parse('/Equipment/post/create');
    final Map<String, String> $headers = {
      if (token != null) 'TOKEN': token,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<EquipmentRes, EquipmentRes>($request);
  }

  @override
  Future<Response<EquipmentRes>> _updateEquipment({
    required String? id,
    required Equipment? body,
    String? token,
  }) {
    final Uri $url = Uri.parse('/Equipment/post/update');
    final Map<String, dynamic> $params = <String, dynamic>{'id': id};
    final Map<String, String> $headers = {
      if (token != null) 'TOKEN': token,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      parameters: $params,
      headers: $headers,
    );
    return client.send<EquipmentRes, EquipmentRes>($request);
  }

  @override
  Future<Response<EquipmentArrayRes>> _listEquipment({
    required ListReq? body,
    String? token,
  }) {
    final Uri $url = Uri.parse('/Equipment/post/list');
    final Map<String, String> $headers = {
      if (token != null) 'TOKEN': token,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<EquipmentArrayRes, EquipmentArrayRes>($request);
  }

  @override
  Future<Response<EquipmentGetRes>> _getEquipment({
    required String? id,
    String? token,
  }) {
    final Uri $url = Uri.parse('/Equipment/get/get');
    final Map<String, dynamic> $params = <String, dynamic>{'id': id};
    final Map<String, String> $headers = {
      if (token != null) 'TOKEN': token,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<EquipmentGetRes, EquipmentGetRes>($request);
  }

  @override
  Future<Response<BaseResponse>> _deleteEquipment({
    required String? id,
    String? token,
  }) {
    final Uri $url = Uri.parse('/Equipment/del/delete');
    final Map<String, dynamic> $params = <String, dynamic>{'id': id};
    final Map<String, String> $headers = {
      if (token != null) 'TOKEN': token,
    };
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<BaseResponse, BaseResponse>($request);
  }

  @override
  Future<Response<NotificationArrayRes>> _listNotification({
    int? page,
    int? size,
    String? sort,
    String? token,
  }) {
    final Uri $url = Uri.parse('/Notification/get/list');
    final Map<String, dynamic> $params = <String, dynamic>{
      'page': page,
      'size': size,
      'sort': sort,
    };
    final Map<String, String> $headers = {
      if (token != null) 'TOKEN': token,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<NotificationArrayRes, NotificationArrayRes>($request);
  }

  @override
  Future<Response<NotificationArrayRes>> _searchNotification({
    required String? search,
    int? page,
    int? size,
    String? token,
  }) {
    final Uri $url = Uri.parse('/Notification/get/search');
    final Map<String, dynamic> $params = <String, dynamic>{
      'search': search,
      'page': page,
      'size': size,
    };
    final Map<String, String> $headers = {
      if (token != null) 'TOKEN': token,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<NotificationArrayRes, NotificationArrayRes>($request);
  }

  @override
  Future<Response<BaseResponse>> _cleanup({String? token}) {
    final Uri $url = Uri.parse('/Phc/del/cleanup');
    final Map<String, String> $headers = {
      if (token != null) 'TOKEN': token,
    };
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<BaseResponse, BaseResponse>($request);
  }
}
