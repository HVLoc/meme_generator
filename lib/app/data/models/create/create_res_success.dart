class CreateResSuccess {
  final bool? success;
  final Data? data;
  const CreateResSuccess({this.success, this.data});
  CreateResSuccess copyWith({bool? success, Data? data}) {
    return CreateResSuccess(
        success: success ?? this.success, data: data ?? this.data);
  }

  Map<String, Object?> toJson() {
    return {'success': success, 'data': data?.toJson()};
  }

  static CreateResSuccess fromJson(Map<String, Object?> json) {
    return CreateResSuccess(
        success: json['success'] == null ? null : json['success'] as bool,
        data: json['data'] == null
            ? null
            : Data.fromJson(json['data'] as Map<String, Object?>));
  }

  @override
  String toString() {
    return '''CreateResSuccess(
                success:$success,
data:${data.toString()}
    ) ''';
  }

  @override
  bool operator ==(Object other) {
    return other is CreateResSuccess &&
        other.runtimeType == runtimeType &&
        other.success == success &&
        other.data == data;
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, success, data);
  }
}

class Data {
  final String? url;
  final String? pageUrl;
  const Data({this.url, this.pageUrl});
  Data copyWith({String? url, String? pageUrl}) {
    return Data(url: url ?? this.url, pageUrl: pageUrl ?? this.pageUrl);
  }

  Map<String, Object?> toJson() {
    return {'url': url, 'pageUrl': pageUrl};
  }

  static Data fromJson(Map<String, Object?> json) {
    return Data(
        url: json['url'] == null ? null : json['url'] as String,
        pageUrl: json['pageUrl'] == null ? null : json['pageUrl'] as String);
  }

  @override
  String toString() {
    return '''Data(
                url:$url,
pageUrl:$pageUrl
    ) ''';
  }

  @override
  bool operator ==(Object other) {
    return other is Data &&
        other.runtimeType == runtimeType &&
        other.url == url &&
        other.pageUrl == pageUrl;
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, url, pageUrl);
  }
}
