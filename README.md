# fires
Import Data: Need to copy and paste sqllite file from Kaggle into local drive path.
FPA_FOD_20170508.sqlite https://www.kaggle.com/rtatman/188-million-us-wildfires

Data Files:  
mgrs_final.csv - final 10km MGRS locations used for Southern California.  385 total MGRS locations     
fires_raw_coords.csv - list of all Southern California fires within the MGRS locations.  Raw coords, not the MGRS lat/lon

Notebooks:    
WeatherCall_Meteomatics.ipynb - gets weather data from 2000-2015 for all MGRS locations in Southern California.  File too large for github.  Save .csv that is output from notebook to personal drive     

weather = pd.read_csv('2000to2015_Weather_v2.csv')
weather.info()

<class 'pandas.core.frame.DataFrame'>
RangeIndex: 2249940 entries, 0 to 2249939
Data columns (total 14 columns):
 #   Column                         Dtype  
---  ------                         -----  
 0   Unnamed: 0                     int64  
 1   lat                            float64
 2   lon                            float64
 3   t_mean_2m_24h:F                float64
 4   t_min_2m_24h:F                 float64
 5   t_max_2m_24h:F                 float64
 6   precip_24h:mm                  float64
 7   sunshine_duration_24h:min      float64
 8   drought_index:idx              float64
 9   soil_moisture_index_-15cm:idx  float64
 10  soil_type:idx                  float64
 11  wind_speed_2m:mph              float64
 12  elevation:m                    float64
 13  date                           object 
dtypes: float64(12), int64(1), object(1)
memory usage: 240.3+ MB

fires_model_v1.ipynb - gets fire, weather, and location data.  Merges data, train/test split, scale, grid search, fit, predict

