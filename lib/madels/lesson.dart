// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Lesson {
  final String lessonId;
  final String title;
  final String description;
  final String image;
  final String aithor;
  Lesson({
    required this.lessonId,
    required this.title,
    required this.description,
    required this.image,
    required this.aithor,
  });

  


  Lesson copyWith({
    String? lessonId,
    String? title,
    String? description,
    String? image,
    String? aithor,
  }) {
    return Lesson(
      lessonId: lessonId ?? this.lessonId,
      title: title ?? this.title,
      description: description ?? this.description,
      image: image ?? this.image,
      aithor: aithor ?? this.aithor,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lessonId': lessonId,
      'title': title,
      'description': description,
      'image': image,
      'aithor': aithor,
    };
  }

  factory Lesson.fromMap(Map<String, dynamic> map) {
    return Lesson(
      lessonId: map['lessonId'] as String,
      title: map['title'] as String,
      description: map['description'] as String,
      image: map['image'] as String,
      aithor: map['aithor'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Lesson.fromJson(String source) => Lesson.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Lesson(lessonId: $lessonId, title: $title, description: $description, image: $image, aithor: $aithor)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Lesson &&
      other.lessonId == lessonId &&
      other.title == title &&
      other.description == description &&
      other.image == image &&
      other.aithor == aithor;
  }

  @override
  int get hashCode {
    return lessonId.hashCode ^
      title.hashCode ^
      description.hashCode ^
      image.hashCode ^
      aithor.hashCode;
  }
}
