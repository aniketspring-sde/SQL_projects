select un.year, sum(un.value) from unpop as un
where un.country_name in (

    'Afghanistan',
    'Bangladesh',
    'Bhutan',
    'India',
    'Maldives',
    'Nepal',
    'Pakistan',
    'Sri Lanka'

)

group by un.year
order by un.year asc;