/*

Queries used for Tableau Project

*/

#global number on new caces
#1.
select sum(new_cases) as total_cases,sum(new_deaths) as total_deaths,sum(new_deaths)/sum(new_cases)*100 as death_percentage
from prj1dataexploration.coviddeathsss
where continent is not null;

#European Union is part of Europe
#2.
select location, SUM(new_deaths) as TotalDeathCount
From prj1dataexploration.coviddeathsss
Where continent is null 
and location not in ('World', 'European Union', 'International')
Group by location
order by TotalDeathCount desc;

#looking at highest infected country
#3
select location,population,max(total_cases) as HighestInfectionCount, 
max((total_cases/population)*100) as infected_percentage from prj1dataexploration.coviddeathsss
group by location,population
order by infected_percentage desc

#looking at highest infected country according to date
#4
select location,population,date,max(total_cases) as HighestInfectionCount, 
max((total_cases/population)*100) as infected_percentage from prj1dataexploration.coviddeathsss
group by location,population,date
order by infected_percentage  desc










