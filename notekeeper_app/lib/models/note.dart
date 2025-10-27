class Note {
  int? id;
  String title;
  String content;
  String timestamp;

  Note({
    this.id,
    required this.title,
    required this.content,
    required this.timestamp,
  });

  // Convert Note object to Map
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'content': content,
      'timestamp': timestamp,
    };
  }

  // Convert Map from SQLite back to Note object
  factory Note.fromMap(Map<String, dynamic> map) {
    return Note(
      id: map['id'],
      title: map['title'],
      content: map['content'],
      timestamp: map['timestamp'],
    );
  }
}
