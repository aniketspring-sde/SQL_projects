select mt.bowler, mt.runs ,mt.balls,concat((mt.runs /mt.balls) ,'.', (mt.runs % mt.balls)) as
economy from (
select x.bowler,x.runs,y.balls from (
select bowler ,sum( total_runs) as runs from (
select * from deliveries d
left join matches m
on m.id = d.match_id
)t
where t.season = '2015'
group by t.bowler
)x
left join (
select bowler, count(ball) as balls from (
select * from deliveries d
left join matches m
on m.id = d.match_id
)s
where s.season = '2015'
group by s.bowler
)y
on x.bowler = y.bowler
) mt
order by economy desc
limit 10;