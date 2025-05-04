/*
The Globle number of cases, number of deaths, and the death percentage compared to Globle Cases
in the interval 1/1/2020 - 30/4/2021:
*/

Select 
    SUM(new_cases) as globle_cases, 
    SUM(cast(new_deaths as INT)) as globle_deaths, 
    ROUND((SUM(new_deaths::numeric)/SUM(New_Cases::numeric))*100, 3) as globle_Death_Percentage
From
    coviddeaths
where
    continent is not null
    OR location = 'International';


-- Or we can calculate the same numbers by fallowing code:

Select 
    SUM(new_cases) as globle_cases, 
    SUM(cast(new_deaths as INT)) as globle_deaths, 
    ROUND((SUM(new_deaths::numeric)/SUM(New_Cases::numeric))*100, 3) as globle_Death_Percentage
From
    coviddeaths
where
    location = 'World';  -- world = all the countries + International people.

/*
[
  {
    "globle_cases": "150575698",
    "globle_deaths": "3180221",
    "globle_death_percentage": "2.112"
  }
]
*/
