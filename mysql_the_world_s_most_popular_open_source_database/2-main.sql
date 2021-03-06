

\! echo "\nNumber of season by TVShow ordered by name (A-Z)?"
select TVShow.name, count(season.tvshow_id) as nb_seasons from TVShow join season on (TVShow.id = season.tvshow_id) group by season.tvshow_id order by name;


\! echo "\nList of Network by TVShow ordered by name (A-Z)?"
select TVShow.name as "TVShow name", Network.name as "Network name" from TVShow join Network on (TVShow.network_id = Network.id) order by TVShow.name;



\! echo "\nList of TVShows ordered by name (A-Z) in the Network 'Fox (US)'?"
select name from TVShow where network_id = (select id from Network where name = 'Fox (US)') order by name;

\! echo "\nNumber of episodes by TVShows ordered by name (A-Z)?"
select TVShow.name as name, count(Episode.id) as nb_episodes from TVShow join Season on (TVShow.id = Season.tvshow_id) join Episode on (Season.id = Episode.season_id) group by TVShow.id order by TVShow.name;
