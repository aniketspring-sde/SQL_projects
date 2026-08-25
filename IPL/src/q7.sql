select bowling_team as teams, sum(extra_runs) as runs_conceded from (
select * from deliveries d
left join matches m
on m.id = d.match_id
)t
where t.season = '2016'
group by t.bowling_team;