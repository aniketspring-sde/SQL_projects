select season,team,sum(no_match) as match_played from(
select team1 as team,season,count(id) as no_match from matches m
group by m.team1, m.season
union all
select team2 as team,season,count(id) as no_match from matches m
group by m.team2, m.season
) as t
group by t.season , t.team
order by season asc;