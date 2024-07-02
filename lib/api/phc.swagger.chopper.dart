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
  Future<Response<VaccineArrayRes>> _listVaccines({
    required ListReq? body,
    String? token,
  }) {
    final Uri $url = Uri.parse('/DemoEntity/post/list');
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
  Future<Response<VaccineArrayRes>> _getVaccines({
    String? vid,
    required String? qid,
    String? token,
  }) {
    final Uri $url = Uri.parse('/DemoEntity/get/get');
    final Map<String, dynamic> $params = <String, dynamic>{'qid': qid};
    final Map<String, String> $headers = {
      if (vid != null) 'vid': vid,
      if (token != null) 'TOKEN': token,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<VaccineArrayRes, VaccineArrayRes>($request);
  }

  @override
  Future<Response<VaccineArrayRes>> _deleteVaccines({
    String? vid,
    required String? qid,
    String? token,
  }) {
    final Uri $url = Uri.parse('/DemoEntity/del/delete_vaccines');
    final Map<String, dynamic> $params = <String, dynamic>{'qid': qid};
    final Map<String, String> $headers = {
      if (vid != null) 'vid': vid,
      if (token != null) 'TOKEN': token,
    };
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<VaccineArrayRes, VaccineArrayRes>($request);
  }
}
