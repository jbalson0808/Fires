# fires
Import Data: Need to copy and paste sqllite file from Kaggle into local drive path.
FPA_FOD_20170508.sqlite https://www.kaggle.com/rtatman/188-million-us-wildfires

Data Files:  
mgrs_final.csv - final 10km MGRS locations used for Southern California.  385 total MGRS locations     
fires_raw_coords.csv - list of all Southern California fires within the MGRS locations.  Raw coords, not the MGRS lat/lon

Notebooks:    
WeatherCall_Meteomatics.ipynb - gets weather data from 2000-2015 for all MGRS locations in Southern California.  File too large for github.  Save .csv that is output from notebook to personal drive     

fires_model_v1.ipynb - gets fire, weather, and location data.  Merges data, train/test split, scale, grid search, fit, predict

