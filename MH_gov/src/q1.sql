SELECT capital_range,
cap_count
FROM (
SELECT
CASE
WHEN CAST(authorizedcapital AS NUMERIC) <= 100000 THEN '<=1L'
WHEN CAST(authorizedcapital AS NUMERIC) > 100000 AND CAST(authorizedcapital
AS NUMERIC) <= 1000000 THEN '1L to 10L'
WHEN CAST(authorizedcapital AS NUMERIC) > 1000000 AND CAST(authorizedcapital
AS NUMERIC) <= 10000000 THEN '10L to 1Cr'
WHEN CAST(authorizedcapital AS NUMERIC) > 10000000 AND
CAST(authorizedcapital AS NUMERIC) <= 100000000 THEN '1Cr to 10Cr'
WHEN CAST(authorizedcapital AS NUMERIC) > 100000000 THEN '>10Cr'
ELSE 'NA'
END AS capital_range,
COUNT(*) AS cap_count
FROM mhgov
GROUP BY capital_range
) as cap_range
ORDER BY
CASE capital_range
WHEN '<=1L' THEN 1
WHEN '1L to 10L' THEN 2
WHEN '10L to 1Cr' THEN 3
WHEN '1Cr to 10Cr' THEN 4
WHEN '>10Cr' THEN 5
ELSE 6
END;