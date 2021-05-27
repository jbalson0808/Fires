# Predict Forest Fires in Southern California       

Import Data: Need to copy and paste sqllite file from Kaggle into local drive path.
FPA_FOD_20170508.sqlite https://www.kaggle.com/rtatman/188-million-us-wildfires

# Main Notebooks:        
* WeatherCall_Meteomatics - Get raw weather data from meteomatics website              
* preprocessing_weather - Adds rolling averages and population density.  Output csv too large for github, will output to your notebook folder.      
    *  Output: weather_clean.csv     
* preprocessing_fires - Adds all dates and all 385 MGRS locations to the fires Kaggle data.  Also adds fires_past3yrs rolling sum by MGRS block.  Output csv too large for github, will output to your notebook folder.          
    *  Output: fires_clean.csv                   
* merge_fires_weather - Merges the weather and fires output csv files together.  Removes months Dec. - Mar. and also years 2000 - 2003.  Years removed due to fires_past3yrs rolling sum.  Output csv too large for github, will output to your notebook folder.    
    *  Output: data_clean.csv     

# SQL Query for Target Day Lags:
* Run data_clean.csv through SQL query to lag the fire occurances by 1, 2, 3, 4, and 5 days     
   * SQL query output file will be in our shared Google drive   

# ToDo:
* Use file resulting from SQL query to build model.  There are 5 targets, is_fire_lag1, is_fire_lag2, ..., is_fire_lag5.
          
* Train/Test Split
     * Use years 2003 - 2012 for training and years 2013 - 2015 for testing

* Some things to try for modeling:
     * Sample data set for quicker run times
     * Remove outliers
     * Balance the target data for better predictions
          * Over sample
          * Under sample
     * Grid search, hyper tuning

# Analysis Folder:       
* 
