class ListMemeRes {
  final bool? success;
  final Data? data;
  const ListMemeRes({this.success, this.data});
  ListMemeRes copyWith({bool? success, Data? data}) {
    return ListMemeRes(
        success: success ?? this.success, data: data ?? this.data);
  }

  Map<String, Object?> toJson() {
    return {'success': success, 'data': data?.toJson()};
  }

  static ListMemeRes fromJson(Map<String, Object?> json) {
    return ListMemeRes(
        success: json['success'] == null ? null : json['success'] as bool,
        data: json['data'] == null
            ? null
            : Data.fromJson(json['data'] as Map<String, Object?>));
  }

  @override
  String toString() {
    return '''ListMemeRes(
                success:$success,
data:${data.toString()}
    ) ''';
  }

  @override
  bool operator ==(Object other) {
    return other is ListMemeRes &&
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
  final List<Memes>? memes;
  const Data({this.memes});
  Data copyWith({List<Memes>? memes}) {
    return Data(memes: memes ?? this.memes);
  }

  Map<String, Object?> toJson() {
    return {
      'memes':
          memes?.map<Map<String, dynamic>>((data) => data.toJson()).toList()
    };
  }

  static Data fromJson(Map<String, Object?> json) {
    return Data(
        memes: json['memes'] == null
            ? null
            : (json['memes'] as List)
                .map<Memes>(
                    (data) => Memes.fromJson(data as Map<String, Object?>))
                .toList());
  }

  @override
  String toString() {
    return '''Data(
                memes:${memes.toString()}
    ) ''';
  }

  @override
  bool operator ==(Object other) {
    return other is Data &&
        other.runtimeType == runtimeType &&
        other.memes == memes;
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, memes);
  }
}

class Memes {
  final String? id;
  final String? name;
  final String? url;
  final int? width;
  final int? height;
  final int? boxCount;
  const Memes(
      {this.id, this.name, this.url, this.width, this.height, this.boxCount});
  Memes copyWith(
      {String? id,
      String? name,
      String? url,
      int? width,
      int? height,
      int? boxCount}) {
    return Memes(
        id: id ?? this.id,
        name: name ?? this.name,
        url: url ?? this.url,
        width: width ?? this.width,
        height: height ?? this.height,
        boxCount: boxCount ?? this.boxCount);
  }

  Map<String, Object?> toJson() {
    return {
      'id': id,
      'name': name,
      'url': url,
      'width': width,
      'height': height,
      'boxCount': boxCount
    };
  }

  static Memes fromJson(Map<String, Object?> json) {
    return Memes(
        id: json['id'] == null ? null : json['id'] as String,
        name: json['name'] == null ? null : json['name'] as String,
        url: json['url'] == null ? null : json['url'] as String,
        width: json['width'] == null ? null : json['width'] as int,
        height: json['height'] == null ? null : json['height'] as int,
        boxCount: json['boxCount'] == null ? null : json['boxCount'] as int);
  }

  @override
  String toString() {
    return '''Memes(
                id:$id,
name:$name,
url:$url,
width:$width,
height:$height,
boxCount:$boxCount
    ) ''';
  }

  @override
  bool operator ==(Object other) {
    return other is Memes &&
        other.runtimeType == runtimeType &&
        other.id == id &&
        other.name == name &&
        other.url == url &&
        other.width == width &&
        other.height == height &&
        other.boxCount == boxCount;
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, id, name, url, width, height, boxCount);
  }
}
