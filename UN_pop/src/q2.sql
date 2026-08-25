select un.year, un.country_name,un.value from unpop as un
where un.year= 2014
AND un.country_name IN (
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
  );