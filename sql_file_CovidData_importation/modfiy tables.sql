/* ⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️
Database Load Issues (follow if receiving permission denied when running SQL code below)
NOTE: If you are having issues with permissions. And you get error: 
'could not open file "the file name" for reading: Permission denied.'
1. Open pgAdmin
2. In Object Explorer (left-hand pane), navigate to  database used
3. Right-click ont the databse and select `PSQL Tool`
    - This opens a terminal window to write the following code
4. Get the absolute file path of your csv files
    1. Find path by right-clicking a CSV file in VS Code and selecting “Copy Path”
5. Paste the following into `PSQL Tool`, (with the CORRECT file path)

\copy CovidDeaths FROM 'C:\Users\tosheba\Desktop\data analysis\data analysis projects\covid project sql\csv files\CovidDeaths.csv' WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

\copy CovidVaccinations FROM 'C:\Users\tosheba\Desktop\data analysis\data analysis projects\covid project sql\csv files\CovidVaccinations.csv' WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

*/
COPY CovidDeaths
FROM 'C:\Users\tosheba\Desktop\data analysis\data analysis projects\covid project sql\csv files\CovidDeaths.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

COPY CovidVaccinations
FROM 'C:\Users\tosheba\Desktop\data analysis\data analysis projects\covid project sql\csv files\CovidVaccinations.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

