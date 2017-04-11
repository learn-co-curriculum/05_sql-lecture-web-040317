/*
SELECT * FROM artists;

SELECT * FROM artists WHERE name = "Black Sabbath";


CREATE TABLE fans(
	id INTEGER PRIMARY KEY,
	name TEXT
);


ALTER TABLE fans ADD COLUMN artist_id INTEGER;


INSERT INTO fans (name, artist_id) VALUES ("isaac", 169);

SELECT * FROM artists;

SELECT fans.name, artists.Name FROM fans INNER JOIN artists ON fans.artist_id = artists.ArtistId WHERE fans.name = "isaac";


UPDATE fans SET name = "Annoyin’ Commander" WHERE name LIKE "Isaac";

INSERT INTO fans (name, artist_id) VALUES ("bob", 170);
SELECT * FROM fans WHERE artist_id != 169;

SELECT * FROM tracks;
artists.name, SUM(artists.tracks)

SELECT * FROM album;
*/

SELECT artists.Name, COUNT(tracks.TrackId) AS "No. of Rock Tracks" FROM tracks
JOIN albums
ON tracks.AlbumId = albums.AlbumId
JOIN artists
ON albums.ArtistId = artists.ArtistId
JOIN genres
ON tracks.GenreId = genres.GenreId
WHERE genres.Name LIKE "Rock"
GROUP BY artists.Name
HAVING SUM(artists.ArtistId) > 30
ORDER BY COUNT(artists.ArtistId) DESC
;







