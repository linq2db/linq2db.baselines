-- DuckDB
SELECT
	r.Id
FROM
	ClosedPeriodRow r
WHERE
	CAST(Date_Diff('microsecond', r.OpenedOn, r.ClosedOn) * 10 AS DOUBLE) / 864000000000 < 12

-- DuckDB
SELECT
	r.Id
FROM
	ClosedPeriodRow r
ORDER BY
	CAST(Date_Diff('microsecond', r.OpenedOn, r.ClosedOn) * 10 AS DOUBLE) / 36000000000

-- DuckDB
SELECT
	CAST(Date_Diff('microsecond', r.OpenedOn, r.ClosedOn) * 10 AS DOUBLE) / 864000000000,
	CAST(Date_Diff('microsecond', r.OpenedOn, r.ClosedOn) * 10 AS DOUBLE) / 36000000000,
	CAST(Date_Diff('microsecond', r.OpenedOn, r.ClosedOn) * 10 AS DOUBLE) / 600000000,
	CAST((Date_Diff('microsecond', r.OpenedOn, r.ClosedOn) * 10) // 864000000000 AS INTEGER),
	CAST(((Date_Diff('microsecond', r.OpenedOn, r.ClosedOn) * 10) // 36000000000) % 24 AS INTEGER)
FROM
	ClosedPeriodRow r
WHERE
	r.Id = 1
LIMIT 2

