select
d.district, count(d.district) as reg_count
from
(
select
extract(year from cast(companyregistrationdate_date as date)) as reg_year,

(string_to_array(registered_office_address,','))[cardinality(string_to_array(registered_office_addr
ess,','))] as zip,
(string_to_array((string_to_array(registered_office_address,','))[cardinality(string_to_array(regist
ered_office_address,','))],'-'))[1] as pin
from mhgov
where extract(year from cast(companyregistrationdate_date as date)) = 2015
) as mm
left join dist as d
on
mm.pin= d.zipcode
group by d.districtorder by reg_count desc