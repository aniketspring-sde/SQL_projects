select
extract(year from cast(companyregistrationdate_date as date)) as reg_year,
count(*) as reg_count
from mhgov
-- where extract(year from cast(companyregistrationdate_date as date)) != 5600
group by reg_year
order by reg_year desc