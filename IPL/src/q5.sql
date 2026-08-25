select season , count(id) as match_played from matches
group by season
order by season asc;