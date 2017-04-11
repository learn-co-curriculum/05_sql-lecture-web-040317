# Intro to SQL

1. Install the SQLite Browser if you haven't already [here](http://sqlitebrowser.org/)
2. Open the SQLite Browser and click 'File -> Open DataBase'
3. Choose the `chinook.db` file from this repo. This database is open source and maintained by Microsoft (SQL is no fun if you don't have any data)


## What are the four things I can do with data?
+ Create It
+ Read It
+ Update It
+ Delete It

id | name |     
1  | 'Black Sabbath'

artist_fans

id | artist_id | fan_id
1      1          1
2      1          2

id | name
1    "Ian"    


## Challenges

1. How would you return all of the rows in the artists table?
  ```SQL
SELECT * FROM artists;
  ```
2. How would you select the artist with the name "Black Sabbath"
  ```SQL
  SELECT * FROM artists
  WHERE name LIKE 'black sabbath';
  ```
3. How would you create a table named 'fans' with an autoincrementing ID that's a primary key and a name field of type text

  ```sql
CREATE TABLE fans (id INTEGER PRIMARY KEY, name TEXT);
  ```

4. How would you alter the fans table to have a artist_id column type integer?

  ```sql
ALTER TABLE fans ADD COLUMN artist_id INTEGER;
  ```
5. How would you add yourself as a fan of the Black Eyed Peas? ArtistId **169**
  ```sql
INSERT INTO fans (name, artist_id) VALUES ('Ian', 169)
  ```

6. Visit http://www.mess.be/inickgenwuname.php and generate a Wu-Tang name for yourself. How would you update your name to be your wu-tang name?
   ```sql

   ```

7. How would you return fans that are not fans of the black eyed peas.
  ```sql

  ```


8. I want to return the names of the artists and their number of rock tracks
 who play Rock music
and have move than 30 tracks in order of the number of rock tracks that they have
from greatest to least
