select distinct 
a.*,
if(b.is_fire is null, 0, b.is_fire) as is_fire_lag1,
if(c.is_fire is null, 0, c.is_fire) as is_fire_lag2,
if(d.is_fire is null, 0, d.is_fire) as is_fire_lag3,
if(e.is_fire is null, 0, e.is_fire) as is_fire_lag4,
if(f.is_fire is null, 0, f.is_fire) as is_fire_lag5
from `ml-jth.jrw_capstone.socal_fires_weather_mgrs` as a
left join `ml-jth.jrw_capstone.socal_fires_weather_mgrs` as b
on a.date = date_sub(b.date, INTERVAL 1 DAY) and a.mgrs_10km = b.mgrs_10km
left join `ml-jth.jrw_capstone.socal_fires_weather_mgrs` as c
on a.date = date_sub(c.date, INTERVAL 2 DAY) and a.mgrs_10km = c.mgrs_10km
left join `ml-jth.jrw_capstone.socal_fires_weather_mgrs` as d
on a.date = date_sub(d.date, INTERVAL 3 DAY) and a.mgrs_10km = d.mgrs_10km
left join `ml-jth.jrw_capstone.socal_fires_weather_mgrs` as e
on a.date = date_sub(e.date, INTERVAL 4 DAY) and a.mgrs_10km = e.mgrs_10km
left join `ml-jth.jrw_capstone.socal_fires_weather_mgrs` as f
on a.date = date_sub(f.date, INTERVAL 5 DAY) and a.mgrs_10km = f.mgrs_10km
order by a.date
