/*
Time Series of infection rate for every country, in the interval Jan-2020 / Apr-2021.
It's the same query I used in query-3, with the difference adding the date and aggregate by it.
*/



Select
    Location,
    Population,
    date,
    MAX(total_cases::numeric) as highest_infection_count,
    round(Max((total_cases/population::numeric))*100, 3) as highest_infection_rate
From
    CovidDeaths
WHERE
    continent is NOT NULL
    AND total_cases is NOT NULL
Group by
    Location,
    Population,
    date
order by
    highest_infection_rate desc;