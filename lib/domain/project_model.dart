class Project {
  final String title;
  final String description;
  final String imageUrl;
  final String projectUrl;

  Project({
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.projectUrl,
  });

  factory Project.fromJson(Map<String, dynamic> json) {
    return Project(
      title: json['title'] as String,
      description: json['description'] as String,
      imageUrl: json['imageUrl'] as String,
      projectUrl: json['projectUrl'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'description': description,
      'imageUrl': imageUrl,
      'projectUrl': projectUrl,
    };
  }
}
