CREATE TABLE deliveries (
    match_id INT,
    inning INT,
    batting_team VARCHAR(100),
    bowling_team VARCHAR(100),
    over INT,
    ball INT,
    batsman VARCHAR(100),
    non_striker VARCHAR(100),
    bowler VARCHAR(100),
    is_super_over INT,
    wide_runs INT,
    bye_runs INT,
    legbye_runs INT,
    noball_runs INT,
    penalty_runs INT,
    batsman_runs INT,
    extra_runs INT,
    total_runs INT,
    player_dismissed VARCHAR(100),
    dismissal_kind VARCHAR(100),
    fielder VARCHAR(100)
);

CREATE TABLE matches (
    id INT,
    season INT,
    city VARCHAR(100),
    date VARCHAR(50),
    team1 VARCHAR(100),
    team2 VARCHAR(100),
    toss_winner VARCHAR(100),
    toss_decision VARCHAR(50),
    result VARCHAR(50),
    dl_applied INT,
    winner VARCHAR(100),
    win_by_runs INT,
    win_by_wickets INT,
    player_of_match VARCHAR(100),
    venue VARCHAR(150),
    umpire1 VARCHAR(100),
    umpire2 VARCHAR(100),
    umpire3 VARCHAR(100)
);

CREATE TABLE umpire_country (
    name VARCHAR(100),
    country VARCHAR(100)
);

-- Load CSV data

\copy deliveries FROM '/home/xull/Python_MountBlue/SQL_pro/IPL/src/data/deliveries.csv' WITH (FORMAT CSV, HEADER TRUE);

\copy matches FROM '/home/xull/Python_MountBlue/SQL_pro/IPL/src/data/matches.csv' WITH (FORMAT CSV, HEADER TRUE);

\copy umpire_country(name, country) FROM '/home/xull/Python_MountBlue/SQL_pro/IPL/src/data/umpires.csv' WITH (FORMAT CSV, HEADER TRUE);