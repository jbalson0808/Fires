#select mgrs_10km, sum(is_fire) over(partition by mgrs_10km) as fires from `ml-jth.jrw_capstone.socal_fires_weather_mgrs_lag`
select 
    *,
    sum(is_fire) over(partition by mgrs_10km order by epoch_time range between 94608000  PRECEDING AND CURRENT ROW)  as mgrs_fires_past3yrs
from `ml-jth.jrw_capstone.socal_fires_weather_mgrs_lag`
