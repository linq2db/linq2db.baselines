-- DuckDB
DECLARE $low  -- Object
SET     $low = '01:30:00'::INTERVAL
DECLARE $high  -- Object
SET     $high = '03:00:00'::INTERVAL

SELECT
	r.Id
FROM
	BetweenTimeRow r
WHERE
	r."Value" BETWEEN $low AND $high
ORDER BY
	r.Id

-- DuckDB
DECLARE $low  -- Object
SET     $low = '01:30:00'::INTERVAL
DECLARE $high  -- Object
SET     $high = '03:00:00'::INTERVAL

SELECT
	r.Id
FROM
	BetweenTimeRow r
WHERE
	r."Value" NOT BETWEEN $low AND $high
ORDER BY
	r.Id

