#select *, unix_seconds(timestamp(date)) as epoch from `ml-jth.jrw_capstone.socal_fires_weather_mgrs_lag_sample` 
#alter table socal_fires_weather_mgrs_lag add epoch_time long

#epoch time
#alter table `ml-jth.jrw_capstone.socal_fires_weather_mgrs_lag_sample` add column epoch_time int64
#update `ml-jth.jrw_capstone.socal_fires_weather_mgrs_lag_sample` set epoch_time=unix_seconds(timestamp(date)) where epoch_time is null

# date_timestamp
#alter table `ml-jth.jrw_capstone.socal_fires_weather_mgrs_lag` add column date_timestamp TIMESTAMP
#update `ml-jth.jrw_capstone.socal_fires_weather_mgrs_lag` set date_timestamp=timestamp(date) where date_timestamp is null
#update `ml-jth.jrw_capstone.socal_fires_weather_mgrs_lag_sample` set epoch_time=10 where epoch_time is null
#update `ml-jth.jrw_capstone.socal_fires_weather_mgrs_lag_sample` set date="2000-09-28" where tavg=55.4

# test it out
#select * from `ml-jth.jrw_capstone.socal_fires_weather_mgrs_lag_sample`
#select * from `ml-jth.jrw_capstone.socal_fires_weather_mgrs_lag`
select * from `ml-jth.jrw_capstone.socal_fires_weather_mgrs_lag_firespast3yrs`

