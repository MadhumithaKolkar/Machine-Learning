select release_year, count(*) as cnt
from movies
group by release_year
having cnt>2
order by cnt desc

FROM --> WHERE --> GROUP BY --> HAVING --> ORDER BY