select batsman, sum(batsman_runs) as runs from deliveries d
where d.batting_team = 'Royal Challengers Bangalore'
group by d.batsman
order by runs desc
limit 1;