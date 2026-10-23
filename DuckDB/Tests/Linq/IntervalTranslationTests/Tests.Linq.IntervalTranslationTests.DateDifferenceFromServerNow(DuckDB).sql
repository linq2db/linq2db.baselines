-- DuckDB
SELECT
	r.Id
FROM
	ClosedPeriodRow r
WHERE
	CAST(Date_Diff('microsecond', r.ClosedOn, current_localtimestamp()) * 10 AS DOUBLE) / 864000000000 > 300

-- DuckDB
SELECT
	r.Id
FROM
	ClosedPeriodRow r
ORDER BY
	CAST(Date_Diff('microsecond', r.ClosedOn, current_localtimestamp()) * 10 AS DOUBLE) / 864000000000

-- DuckDB
SELECT
	CAST(Date_Diff('microsecond', r.ClosedOn, current_localtimestamp()) * 10 AS DOUBLE) / 864000000000,
	CAST(((Date_Diff('microsecond', r.ClosedOn, current_localtimestamp()) * 10) // 36000000000) % 24 AS INTEGER)
FROM
	ClosedPeriodRow r
WHERE
	r.Id = 1
LIMIT 2

