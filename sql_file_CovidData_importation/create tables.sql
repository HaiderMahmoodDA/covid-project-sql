-- Create covid death table with primary key

CREATE TABLE public.CovidDeaths
(
	iso_code varchar(15),
    continent varchar(15),
    location varchar(45),
    date DATE,
    population bigint,
    total_cases FLOAT,
    new_cases int,
    new_cases_smoothed numeric,
    total_deaths FLOAT,
    new_deaths int,
    new_deaths_smoothed numeric,
    total_cases_per_million numeric,
    new_cases_per_million numeric,
    new_cases_smoosthed_per_million numeric,
    total_deaths_per_million numeric,
    new_deaths_per_million numeric,
    new_deaths_smoothed_per_million numeric,
    reproduction_rate numeric,
    icu_patients int,
    icu_patients_per_million numeric,
    hosp_patients int,
    hosp_patients_per_million numeric,
    weekly_icu_admissions numeric,
    weekly_icu_admissions_per_million numeric,
    weekly_hosp_admissions numeric,
    weekly_hosp_amissions_per_million numeric
    
);


-- Create covid vaccinations table with primary key

CREATE TABLE public.CovidVaccinations
(
	iso_code varchar(15),
    continent varchar(15),
    location varchar(45),
	date DATE,
    new_tests int,
    total_tests int,
    total_tests_per_thousand numeric,
    new_tests_per_thousand numeric,
    new_tests_smoothed int,
    new_tests_smoothed_per_thousand numeric,
    positive_rate numeric,
    tests_per_case numeric,
    tests_units varchar(20),
    total_vaccinations int,
    people_vaccinated int,
    people_fully_vaccinated int,
    new_vaccinations int,
    new_vaccinations_smoothed int,
    total_vaccinations_per_hundred numeric,
    people_vaccinated_per_hundred numeric,
    people_fully_vaccinated_per_hundred numeric,
    new_vaccinations_smoothed_per_million int,
    stringency_index numeric,
    population_density numeric,
    median_age numeric,
    aged_65_older numeric,
    aged_70_older numeric,
    gdp_per_capita numeric,
    extreme_poverty numeric,
    cardiovasc_death_rate numeric,
    diabetes_prevalence numeric,
    female_smokers numeric,
    male_smokers numeric,
    handwashing_facilities numeric,
    hospital_beds_per_thousand numeric,
    life_expectancy numeric,
    human_development_index numeric
);