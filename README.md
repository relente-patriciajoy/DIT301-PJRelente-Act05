# DIT301-PJRelente-Act05

1. How did you implement CRUD using SQLite?

 At first, I implemented CRUD operations using SQLite through a DBHelper class that handled inserting, retrieving, updating, and deleting notes from a local database. Each note was stored as a record in a notes table with fields for the title, content, and timestamp. However, as the activity progressed, I shifted to using the Hive package, a lightweight NoSQL database, which simplified data handling by storing note objects directly in Hive boxes instead of writing raw SQL queries.

2. What challenges did you face in maintaining data persistence?

One of the main challenges I faced was dealing with data model mismatches and adapter errors when switching from SQLite to Hive. I also encountered issues with methods like .save() not being recognized and had to regenerate Hive adapter files using build_runner. Ensuring that the data remained persistent after app restarts required understanding how Hive boxes work and where data is stored locally on the device. These challenges helped me better understand Flutter’s local storage system and how data persistence differs between SQLite and Hive.

3. How could you improve performance or UI design in future versions?

In future versions, I plan to improve performance by adding lazy loading for large note lists and optimizing how data updates are reflected in the UI. For design improvements, I could make the interface more modern and user-friendly by adding color themes, smooth animations, and better text formatting. I also plan to integrate search and filtering features to make managing notes more efficient.