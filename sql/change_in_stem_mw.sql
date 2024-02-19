-- percent change men vs women per year
with men_percent_change as
(select
	year,
	round(((percent_men_stem_year::numeric - lag(percent_men_stem_year) over (order by year)) / lag(percent_men_stem_year) over (order by year)) * 100, 2) as men_stem_percent_change
from	
(select
	year,
	round((sum(total_men) filter (where stem = 'true')	/sum(total_men)::numeric) *100 ,2 ) percent_men_stem_year
	 from education
group by year
order by year) as men_stem_data),

 women_percent_change as(
select
	year,
	round(((percent_women_stem_year - lag(percent_women_stem_year) over (order by year)) / lag(percent_women_stem_year) over (order by year)) * 100,2) as women_stem_percent_change
from
(select
	year,
	round((sum(total_women) filter (where stem = 'true')/sum(total_women)::numeric) * 100, 2) as percent_women_stem_year
from education
group by year
order by year)
 as women_stem_data )

 select
 	men_percent_change.year,
 	men_stem_percent_change,
 	women_stem_percent_change
 from men_percent_change
 	join women_percent_change
 		on men_percent_change.year = women_percent_change.year