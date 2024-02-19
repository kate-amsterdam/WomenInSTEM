--- percent distribution women in stem 2022

select
	majors,
	round((women_per_degree::numeric / sum(women_per_degree) over ())*100, 2) as percent_per_degree_22
from
(select
	majors,
	total_women as women_per_degree
from education
where year = 2022
and stem = 'true')
order by percent_per_degree_22 desc