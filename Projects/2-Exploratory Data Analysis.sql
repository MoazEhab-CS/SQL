 -- Exploratory Data Analysis
 
 select * 
 from layoffs_staging2;
 
-- first see max 5 company had laided off
select company, max(total_laid_off)
from layoffs_staging2
group by company 
order by 2 desc
limit 5;


-- Which companies had 1 which is basically 100 percent of they company laid off
select *
from layoffs_staging2
where percentage_laid_off = 1;


-- order by funds_raised to see how big some of these companies were
select *
from layoffs_staging2
where percentage_laid_off = 1
order by funds_raised_millions desc; -- Britishvolt has raised like 2 Billion


-- see companies with most total layoffs
select company, sum(total_laid_off)
from layoffs_staging2
group by company 
order by 2 desc
limit 10;


-- by location
select location, sum(total_laid_off)
from layoffs_staging2
group by location 
order by 2 desc
limit 10;


-- by the year
select year(`date`), SUM(total_laid_off)
from world_layoffs.layoffs_staging2
group by year(`date`)
order by 1 desc;


-- now let's look at that per year for each company has most layoffs
with company_year as
(
select company, year(`date`) as years, sum(total_laid_off) as total_off
from layoffs_staging2
group by company, years
), company_year_rank as 
(
select company, years , total_off, dense_rank() over(partition by years
order by total_off desc) as ranking
from company_year
)
select company, years, total_off, ranking
from company_year_rank
where ranking <= 3
and years is not null
order by years asc, total_off desc;


-- Rolling total of layoffs per month
select substring(`date`,1,7) as dates, sum(total_laid_off) as total_off
from layoffs_staging2
group by dates
order by dates asc;


-- use it in a CTE
with date_cte as
(
select substring(`date`,1,7) as dates, sum(total_laid_off) as total_laid_of
from layoffs_staging2
group by dates
order by dates asc
)
select dates, sum(total_laid_of) over(order by dates asc) as rolling_total_layoffs
from date_cte
order by dates asc;