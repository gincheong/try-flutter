class ITodoItem {
  String title;
  bool completed;

  ITodoItem({required this.title, required this.completed});

  factory ITodoItem.fromJson(Map<String, dynamic> json) {
    return ITodoItem(
      title: json['title'],
      completed: json['completed'],
    );
  }
}

class IPost {
  int id;
  String title;
  String body;

  IPost({required this.title, required this.id, required this.body});

  factory IPost.fromJson(Map<String, dynamic> json) {
    return IPost(
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }
}

class IComment {
  String email;
  String body;

  IComment({required this.email, required this.body});

  factory IComment.fromJson(Map<String, dynamic> json) {
    return IComment(
      email: json['email'],
      body: json['body'],
    );
  }
}
