/*
The number of death count caused by coivd-19, divieded on continent, and international as well which 
mean the people who don't belonge to any countery, in the interval 1/1/2020 - 30/4/2021:
*/


Select
    location, 
    SUM(new_deaths) as total_death_count
From
   CovidDeaths
Where
    continent is null 
    and location not in ('World', 'European Union')
Group by 
    location
order by
    total_death_count desc;

-- I excluded the 'world' and 'european union' because 'world' is included every continent, and 
-- 'european union' is included in europe.

/*
[
  {
    "location": "Europe",
    "total_death_count": "1016750"
  },
  {
    "location": "North America",
    "total_death_count": "847942"
  },
  {
    "location": "South America",
    "total_death_count": "672415"
  },
  {
    "location": "Asia",
    "total_death_count": "520269"
  },
  {
    "location": "Africa",
    "total_death_count": "121784"
  },
  {
    "location": "Oceania",
    "total_death_count": "1046"
  },
  {
    "location": "International",
    "total_death_count": "15"
  }
]
*/


