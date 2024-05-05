select max(imdb_rating) from movies where industry="bollywood";
select min(imdb_rating) from movies where industry="bollywood";
select avg(imdb_rating) from movies where studio="Marvel Studios";
select round(avg(imdb_rating),2) from movies where studio="Marvel Studios";
select avg(imdb_rating) as avg_rating from movies where studio="Marvel Studios";

select min(imdb_rating) as min_rating,
	max(imdb_rating) as max_rating,
	round(avg(imdb_rating),3) as avg_rating
from movies where studio = "Marvel Studios";

select studio,count(*) as cnt, round(avg(imdb_rating),3) as avg_rating
from movies
group by studio
order by cnt desc;

select studio,count(studio) as cnt, round(avg(imdb_rating),3) as avg_rating
from movies
where studio !=""
group by studio
order by avg_rating desc;