

\! echo "\nNumber of seasons by tvshow_id?"
select tvshow_id, count(id) from Season group by tvshow_id;


\! echo "\nNumber of occurrences of the same episode number ordered by episode number?"
select number, count(id) from Episode group by number;


\! echo "\nTop 3 of the Genre's occurrences in all TVShows ordered by this number?"
select genre_id, count(genre_id) AS occurrences_genre from TVShowGenre group by genre_id order by count(genre_id) desc limit 3;


\! echo "\nSearch all TVShow with this letter sequence 'th' case insensitive and display with the name in lowercase?"
select lower(name) as name from TVShow where name like "%th%";
