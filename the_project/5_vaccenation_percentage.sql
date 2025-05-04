/*
The vaccenation percentage for every country in interval 1/1/2020 - 30/4/2021 is given by
the fallowing code:
*/

WITH vaccenation_data AS
    (
    SELECT
        dea.location,
        dea.date,
        population,
        new_vaccinations,
        sum(new_vaccinations) OVER(PARTITION BY dea.location ORDER BY dea.location, dea.date) AS rolling_vaccinations_sum
    FROM coviddeaths AS dea
    JOIN covidvaccinations  AS vac
        ON dea.date = vac.date
        AND dea.location = vac.location
    WHERE
        dea.continent IS NOT NULL
    ORDER BY
        dea.location, dea.date
    )

SELECT *,
    round(((rolling_vaccinations_sum::numeric)/(population::numeric))*100, 3) AS vaccenation_percentage
FROM
    vaccenation_data;


/*
By creating the term "rolling_vaccenation_sum" I can calculate the vaccenation_percentage devolpment 
with time. 
*/