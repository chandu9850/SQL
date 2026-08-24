create database all_songs;
use all_songs;
CREATE TABLE Playlist (
    SongID INT PRIMARY KEY,
    SongName VARCHAR(100),
    Artist VARCHAR(100),
    Album VARCHAR(100),
    Genre VARCHAR(50),
    Duration TIME
);
INSERT INTO Playlist (SongID, SongName, Artist, Album, Genre, Duration) VALUES
(1, 'Shape of You', 'Ed Sheeran', 'Divide', 'Pop', '00:03:53'),
(2, 'Blinding Lights', 'The Weeknd', 'After Hours', 'Synth-pop', '00:03:20'),
(3, 'Believer', 'Imagine Dragons', 'Evolve', 'Rock', '00:03:24'),
(4, 'Tum Hi Ho', 'Arijit Singh', 'Aashiqui 2', 'Bollywood', '00:04:22'),
(5, 'Kesariya', 'Arijit Singh', 'Brahmastra', 'Bollywood', '00:04:28'),
(6, 'Levitating', 'Dua Lipa', 'Future Nostalgia', 'Pop', '00:03:23'),
(7, 'Senorita', 'Shawn Mendes', 'Shawn Mendes', 'Pop', '00:03:11'),
(8, 'Faded', 'Alan Walker', 'Different World', 'EDM', '00:03:32'),
(9, 'Perfect', 'Ed Sheeran', 'Divide', 'Pop', '00:04:23'),
(10, 'Despacito', 'Luis Fonsi', 'Vida', 'Reggaeton', '00:03:47');

select * from new_playlist;


select * from new_playlist
limit 4 offset 3;

select * from playlist
limit 5 offset 2;

rename table playlist to new_playlist;

select * from new_playlist limit 4 offset 3;
select * from new_playlist where genre='pop';
select * from new_playlist where genre='bollywood' and artist='arijit singh';
select * from new_playlist where genre='rock' or genre='edm';
select * from new_playlist where duration between'00:03:00' and '00:04:00';

-- order by
select * from new_playlist order by songid asc limit 5 offset 1;
select (10+20) from dual;









