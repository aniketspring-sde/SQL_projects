select batting_team, sum(total_runs) from deliveries d
group by d.batting_team;