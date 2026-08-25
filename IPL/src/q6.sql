select season, winner as teams ,count(winner) as won from matches
group by season, winner
order by season asc;