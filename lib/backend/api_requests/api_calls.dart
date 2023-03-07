import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class PopularCall {
  static Future<ApiCallResponse> call({
    String? page = '0',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Popular',
      apiUrl: 'https://anime-api.crct.dev/anime/gogoanime/top-airing',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'page': page,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic hasNextPage(dynamic response) => getJsonField(
        response,
        r'''$.hasNextPage''',
      );
  static dynamic currentPage(dynamic response) => getJsonField(
        response,
        r'''$.currentPage''',
      );
  static dynamic results(dynamic response) => getJsonField(
        response,
        r'''$.results''',
        true,
      );
}

class AnimeInfoCall {
  static Future<ApiCallResponse> call({
    String? animeId = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Anime Info',
      apiUrl: 'https://anime-api.crct.dev/anime/gogoanime/info/${animeId}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.id''',
      );
  static dynamic title(dynamic response) => getJsonField(
        response,
        r'''$.title''',
      );
  static dynamic url(dynamic response) => getJsonField(
        response,
        r'''$.url''',
      );
  static dynamic genres(dynamic response) => getJsonField(
        response,
        r'''$.genres''',
        true,
      );
  static dynamic totalEpisodes(dynamic response) => getJsonField(
        response,
        r'''$.totalEpisodes''',
      );
  static dynamic image(dynamic response) => getJsonField(
        response,
        r'''$.image''',
      );
  static dynamic releaseDate(dynamic response) => getJsonField(
        response,
        r'''$.releaseDate''',
      );
  static dynamic description(dynamic response) => getJsonField(
        response,
        r'''$.description''',
      );
  static dynamic subOrDub(dynamic response) => getJsonField(
        response,
        r'''$.subOrDub''',
      );
  static dynamic type(dynamic response) => getJsonField(
        response,
        r'''$.type''',
      );
  static dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.status''',
      );
  static dynamic otherName(dynamic response) => getJsonField(
        response,
        r'''$.otherName''',
      );
  static dynamic episodes(dynamic response) => getJsonField(
        response,
        r'''$.episodes''',
        true,
      );
  static dynamic arrayEpisodes(dynamic response) => getJsonField(
        response,
        r'''$.episodes[:].number''',
        true,
      );
}

class WatchAnimeCall {
  static Future<ApiCallResponse> call({
    String? episodeId = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Watch Anime',
      apiUrl: 'https://anime-api.crct.dev/anime/gogoanime/watch/${episodeId}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic headers(dynamic response) => getJsonField(
        response,
        r'''$.headers''',
      );
  static dynamic headersReferer(dynamic response) => getJsonField(
        response,
        r'''$.headers.Referer''',
      );
  static dynamic sources(dynamic response) => getJsonField(
        response,
        r'''$.sources''',
        true,
      );
  static dynamic sourcesUrl(dynamic response) => getJsonField(
        response,
        r'''$.sources[:].url''',
        true,
      );
  static dynamic download(dynamic response) => getJsonField(
        response,
        r'''$.download''',
      );
  static dynamic sourcesM3U8(dynamic response) => getJsonField(
        response,
        r'''$.sources[:].isM3U8''',
        true,
      );
  static dynamic sourcesQuality(dynamic response) => getJsonField(
        response,
        r'''$.sources[:].quality''',
        true,
      );
}

class ServerStreamCall {
  static Future<ApiCallResponse> call({
    String? episodeId = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Server Stream',
      apiUrl: 'https://anime-api.crct.dev/anime/gogoanime/servers/${episodeId}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic results(dynamic response) => getJsonField(
        response,
        r'''$.result''',
        true,
      );
  static dynamic resultIds(dynamic response) => getJsonField(
        response,
        r'''$.result[:].id''',
        true,
      );
  static dynamic resultNames(dynamic response) => getJsonField(
        response,
        r'''$.result[:].name''',
        true,
      );
  static dynamic resultUrls(dynamic response) => getJsonField(
        response,
        r'''$.result[:].url''',
        true,
      );
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

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar) {
  jsonVar ??= {};
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return '{}';
  }
}
