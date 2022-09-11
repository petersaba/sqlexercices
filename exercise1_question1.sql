SELECT name, earnings_rank
FROM movies, oscars
WHERE oscars.type = 'Best-Picture' and oscars.movie_id = movies.id and movies.earnings_rank = (SELECT MIN(earnings_rank) FROM movies)