select un.year, un.country_name,un.value from unpop as un
where un.country_name IN (
      'Brunei Darussalam',
      'Cambodia',
      'Indonesia',
      'Lao PDR',
      'Malaysia',
      'Myanmar',
      'Philippines',
      'Singapore',
      'Thailand',
      'Viet Nam'
  )
  AND un.year >= 2004
  and un.year <= 2014


  order by un.year asc ;

