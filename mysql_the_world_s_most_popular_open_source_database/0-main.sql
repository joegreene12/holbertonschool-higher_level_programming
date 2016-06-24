
\! echo "\nList of all tables?"
show tables;

\! echo "\nDisplay the table structure of TVShow, Genre and TVShowGenre?"
show create table TVShow;
show create table Genre;
show create table TVShowGenre;

\! echo "\nList of TVShows, only id and name ordered by name (A-Z)?"
select id, name from TVShow order by name;

\! echo "\nList of Genres, only id and name ordered by name (Z-A)?"
select * from Genre order by name desc;

\! echo "\nList of Network, only id and name?"
select * from Network;

\! echo "\nNumber of episodes in the database?"
select count(id) from Episode;
