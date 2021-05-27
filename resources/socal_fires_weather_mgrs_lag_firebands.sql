select
*,
case
    when mgrs_firecount/mgrs_max_firecount >= .65 then "extreme"
    when mgrs_firecount/mgrs_max_firecount >= .4 and  mgrs_firecount/mgrs_max_firecount < .65 then "high"
    when mgrs_firecount/mgrs_max_firecount >= .10 and  mgrs_firecount/mgrs_max_firecount < .4 then "moderate"
    else 'low'
end as fireband
from
(select 
    *,
    (select max (mgrs_firecount) from `ml-jth.jrw_capstone.socal_fires_weather_mgrs_lag_firespast3yrs_counts`) as mgrs_max_firecount 
from `ml-jth.jrw_capstone.socal_fires_weather_mgrs_lag_firespast3yrs_counts` order by mgrs_firecount desc) as x

