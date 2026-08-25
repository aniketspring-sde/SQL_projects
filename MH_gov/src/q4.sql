select mm.reg_year, mm.company_profile,
count(mm.company_profile) as profile_count
from (
select
extract(Year from cast(CompanyRegistrationdate_date as date) ) as reg_year,
(string_to_array(CompanyIndustrialClassification,' '))[1
] as company_profile
from mhgov
) mm
where mm.reg_year <= 2026
and mm.reg_year >= 2016
group by mm.reg_year,mm.company_profile
order by mm.reg_year desc