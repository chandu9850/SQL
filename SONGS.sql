CREATE DATABASE SONGS ;
USE  SONGS ;
CREATE TABLE PLAYLIST (
    SongID INT PRIMARY KEY,
    SongName VARCHAR(50),
    Artist VARCHAR(50),
    Album VARCHAR(50),
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
(10, 'Despacito', 'Luis Fonsi', 'Vida', 'Reggaeton', '00:03:47'),
(11, 'Counting Stars', 'OneRepublic', 'Native', 'Pop Rock', '00:04:17'),
(12, 'Apna Bana Le', 'Arijit Singh', 'Bhediya', 'Bollywood', '00:04:21'),
(13, 'Dance Monkey', 'Tones and I', 'The Kids Are Coming', 'Pop', '00:03:29'),
(14, 'Rockstar', 'Post Malone', 'Beerbongs & Bentleys', 'Hip-Hop', '00:03:38'),
(15, 'Stay', 'Justin Bieber', 'Justice', 'Pop', '00:02:21'),
(16, 'Let Me Love You', 'DJ Snake', 'Encore', 'EDM', '00:03:25'),
(17, 'Cheap Thrills', 'Sia', 'This Is Acting', 'Pop', '00:03:31'),
(18, 'Channa Mereya', 'Arijit Singh', 'Ae Dil Hai Mushkil', 'Bollywood', '00:04:49'),
(19, 'Thunder', 'Imagine Dragons', 'Evolve', 'Rock', '00:03:07'),
(20, 'Sunflower', 'Post Malone', 'Spider-Verse OST', 'Hip-Hop', '00:02:38');

select * from playlist;

-- find total duration of all songs playlist
select sec_to_time(sum(duration))  from playlist;
