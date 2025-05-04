/*
the maximum infection count and infection rate for every countery in the interval
Jan-2020 / Apr-2021:
*/



Select
    Location,
    Population,
    MAX(total_cases) as highest_infection_count,
    round(Max((total_cases/population::numeric))*100, 3) as highest_infection_rate
From
    CovidDeaths
WHERE
    continent is NOT NULL
    AND total_cases is NOT NULL
Group by
    Location,
    Population
order by
    highest_infection_rate desc;
    

-- we can break it for every continent:


Select
    Location,
    Population,
    MAX(total_cases) as highest_infection_count,
    round(Max((total_cases/population::numeric))*100, 3) as highest_infection_rate
From
    CovidDeaths
WHERE
    continent is NULL -- this is crucial difference.
    AND total_cases is NOT NULL
    AND location not in ('World' ,'European Union')
Group by
    Location,
    Population
order by
    highest_infection_rate desc;

/*
the idea is: the coulume "location" contine in it countries and continent as well,
and when the location is acually a continent the "continent" coulum is null;
so when we caculated the countries with highest death rate in the previous qurey we filterd out the continent in 
"location" by setting where cluse "where the continent is not null", but in this qurey we want to sort the continents 
according to thier death rate from the highest to lowest, so we setted a where cluse "where continent is null" i.e only the null one,
which will fillter out counteries in "location" coulum.
*/


