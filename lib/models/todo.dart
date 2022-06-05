class Todo {
  int? userId;
  int? id;
  String? title;
  String? body;

  Todo({this.userId, this.id, this.title, this.body});

  factory Todo.fromJson(Map<String, dynamic> json) {
    return Todo(
        userId: json['userId'] ,
        id: json['id'] ,
        title: json['title'],
        body: json['body']);
  }
}
