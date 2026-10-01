-- DuckDB
SELECT
	r.Id
FROM
	Issue5777Row r
WHERE
	CAST(Date_Diff('microsecond', r.OpenedOn, r.ClosedOnNullable) * 10 AS DOUBLE) / 864000000000 > 0

-- DuckDB
SELECT
	r.Id
FROM
	Issue5777Row r
WHERE
	CAST(Date_Diff('microsecond', r.OpenedOn, r.ClosedOnNullable) * 10 AS DOUBLE) / 36000000000 > 0

-- DuckDB
SELECT
	r.Id
FROM
	Issue5777Row r
WHERE
	CAST(Date_Diff('microsecond', r.ClosedOnNullable, '2026-10-01 00:00:00.000000'::TIMESTAMP) * 10 AS DOUBLE) / 864000000000 > 0

-- DuckDB
SELECT
	CAST(Date_Diff('microsecond', r.OpenedOn, r.ClosedOnNullable) * 10 AS DOUBLE) / 36000000000
FROM
	Issue5777Row r
WHERE
	r.Id = 1
LIMIT 2

