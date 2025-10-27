# DIT301-PJRelente-Act05

1. How did you implement CRUD using SQLite?

 I implemented CRUD operations by integrating SQLite into my Flutter app using the sqflite and path packages. I created a DBHelper class that handles all database operations, including creating the notes table and defining methods for inserting, reading, updating, and deleting records. The Note model class contains toMap() and fromMap() methods to convert data between Dart objects and database records. The NoteListScreen displays all the saved notes, while the NoteEditScreen allows users to add or edit note entries, which are then saved directly into the SQLite database.

2. What challenges did you face in maintaining data persistence?

One of the main challenges I faced was ensuring that the data persisted correctly across app restarts and updates. At first, there were issues with mapping data to and from the database and refreshing the UI after CRUD operations. I also encountered permission-related errors while building and running the app, as well as difficulties connecting the UI to the database correctly. Debugging these helped me understand how asynchronous database operations work in Flutter and how to properly reload data after every change.

3. How could you improve performance or UI design in future versions?

In future versions, I plan to improve performance by adding lazy loading for large note lists and optimizing how data updates are reflected in the UI. For design improvements, I could make the interface more modern and user-friendly by adding color themes, smooth animations, and better text formatting. I also plan to integrate search and filtering features to make managing notes more efficient.