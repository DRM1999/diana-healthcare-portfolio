# Importing Data into MySQL Workbench

1. Save Excel file as `patient_data.csv`
2. Open MySQL Workbench and connect to the database
3. Create the table using the `create_table.sql` script
4. Run the following command in SQL tab (update the file path):

LOAD DATA INFILE '/path/to/patient_data.csv'
INTO TABLE patient_data
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
