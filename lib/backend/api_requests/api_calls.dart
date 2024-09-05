import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class DashboardCall {
  static Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'dashboard',
      apiUrl:
          'https://stmik-banksampah.neumediradev.my.id/api/driver/schedules',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static bool? sucess(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.success''',
      ));
  static dynamic user(dynamic response) => getJsonField(
        response,
        r'''$.user''',
      );
  static String? username(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.name''',
      ));
  static String? useremail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.email''',
      ));
  static String? useraddress(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.user.address''',
      ));
  static String? userphone(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.phone''',
      ));
  static String? userrole(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.role''',
      ));
  static List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  static List<int>? dataid(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? userdriver(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].user_id_driver''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? useridcustomer(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].user_id_customer''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? numberorder(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].number_order''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? pickupdate(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].pickup_date''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? pickuptime(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].pickup_time''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? status(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].status''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? customer(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].customer''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? address(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].address''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class LoginCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "$email",
  "password": "$password"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'login',
      apiUrl: 'https://stmik-banksampah.neumediradev.my.id/api/login',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static bool? success(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.success''',
      ));
  static dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.message''',
      );
  static List<String>? messageemail(dynamic response) => (getJsonField(
        response,
        r'''$.message.email''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? messagepassword(dynamic response) => (getJsonField(
        response,
        r'''$.message.password''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class LogoutCall {
  static Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'logout',
      apiUrl: 'https://stmik-banksampah.neumediradev.my.id/api/logout',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class ResetPasswordCall {
  static Future<ApiCallResponse> call({
    String? email = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "$email"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'reset password',
      apiUrl: 'https://stmik-banksampah.neumediradev.my.id/api/reset-password',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.email''',
      ));
}

class ShowScheduleCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    int? showschedule,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'show schedule',
      apiUrl:
          'https://stmik-banksampah.neumediradev.my.id/api/driver/schedules/$showschedule',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {
        'showschedule': showschedule,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  static int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data[:].id''',
      ));
  static int? iddriver(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data[:].user_id_driver''',
      ));
  static int? idcustomer(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data[:].user_id_customer''',
      ));
  static String? numberorder(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data[:].number_order''',
      ));
  static String? date(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].pickup_date''',
      ));
  static String? time(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].pickup_time''',
      ));
  static String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].status''',
      ));
  static String? customer(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].customer''',
      ));
  static String? address(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].address''',
      ));
}

class HistoryCall {
  static Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'history',
      apiUrl:
          'https://stmik-banksampah.neumediradev.my.id/api/driver/schedules/history',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  static List<int>? dataid(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? useriddriver(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].user_id_driver''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? useridcustomer(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].user_id_customer''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? numberorder(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].number_order''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? pickupdate(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].pickup_date''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? pickuptime(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].pickup_time''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? status(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].status''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<double>? totalweight(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].total_weight''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  static List<int>? totalprice(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].total_price''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class HistoryDetailCall {
  static Future<ApiCallResponse> call({
    int? historydetail,
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'history detail',
      apiUrl:
          'https://stmik-banksampah.neumediradev.my.id/api/driver/schedules/history/$historydetail',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {
        'historydetail': historydetail,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? dataid(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data[:].id''',
      ));
  static List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  static int? useriddriver(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data[:].user_id_driver''',
      ));
  static int? useridcustomer(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data[:].user_id_customer''',
      ));
  static String? numberorder(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data[:].number_order''',
      ));
  static String? pickupdate(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data[:].pickup_date''',
      ));
  static String? pickuptime(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data[:].pickup_time''',
      ));
  static String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].status''',
      ));
  static String? customer(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].customer''',
      ));
  static String? driver(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].driver''',
      ));
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
