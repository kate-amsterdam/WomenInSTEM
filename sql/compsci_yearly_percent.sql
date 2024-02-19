-- here i got the pecent per women per stem major per year, and the percent change per major, but ended up only looking at the computer science major.
with women_per_major_cte as
(
select
	majors,
	year,
	sum(total_women) as women_per_major_year
from education
where stem = 'true'
group by year, majors
order by majors
),
percent_year_cte as 
(
select
	majors,
	year,
	round((women_per_major_year::numeric / sum(women_per_major_year) over (partition by year)) * 100, 2) as percent_wmn_per_major_per_yr
from women_per_major_cte
),
lagged_percents as 
(
select
	majors,
	year,
	percent_wmn_per_major_per_yr,
	lag(percent_wmn_per_major_per_yr) over (partition by majors order by year) as lagged_percent
from percent_year_cte
order by majors, year
),
  percent_change_all_stem_majors as
(select
	majors,
	year,
	percent_wmn_per_major_per_yr,
	lagged_percent,
 round(((percent_wmn_per_major_per_yr::numeric - lagged_percent)/ lagged_percent)* 100, 2) as percent_change_per_year
from lagged_percents
)
select 
	majors,
	year,
	percent_wmn_per_major_per_yr,
	percent_change_per_year
from percent_change_all_stem_majors
where majors = 'Computer and Information Sciences and Support Services'