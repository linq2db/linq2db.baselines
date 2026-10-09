-- DuckDB
SELECT
	r.Id
FROM
	ClosedPeriodRow r
WHERE
	CAST(Date_Diff('microsecond', r.OpenedOn, r.ClosedOnNullable) * 10 AS DOUBLE) / 864000000000 > 0

-- DuckDB
SELECT
	r.Id
FROM
	ClosedPeriodRow r
WHERE
	CAST(Date_Diff('microsecond', r.OpenedOn, r.ClosedOnNullable) * 10 AS DOUBLE) / 36000000000 > 0

-- DuckDB
DECLARE $asOf  -- DateTime2
SET     $asOf = '2026-01-03 13:30:00.000000'::TIMESTAMP

SELECT
	r.Id
FROM
	ClosedPeriodRow r
WHERE
	CAST(Date_Diff('microsecond', r.ClosedOnNullable, CAST($asOf AS TIMESTAMP)) * 10 AS DOUBLE) / 864000000000 > 0

-- DuckDB
SELECT
	CAST(Date_Diff('microsecond', r.OpenedOn, r.ClosedOnNullable) * 10 AS DOUBLE) / 36000000000
FROM
	ClosedPeriodRow r
WHERE
	r.Id = 1
LIMIT 2

-- DuckDB
SELECT
	r.Id
FROM
	ClosedPeriodRow r
WHERE
	CAST((Date_Diff('microsecond', r.OpenedOn, r.ClosedOnNullable) * 10) // 864000000000 AS INTEGER) > 0

-- DuckDB
SELECT
	r.Id
FROM
	ClosedPeriodRow r
WHERE
	CAST(((Date_Diff('microsecond', r.OpenedOn, r.ClosedOnNullable) * 10) // 36000000000) % 24 AS INTEGER) > 0

-- DuckDB
SELECT
	CAST((Date_Diff('microsecond', r.OpenedOn, r.ClosedOnNullable) * 10) // 864000000000 AS INTEGER),
	CAST(((Date_Diff('microsecond', r.OpenedOn, r.ClosedOnNullable) * 10) // 36000000000) % 24 AS INTEGER)
FROM
	ClosedPeriodRow r
ORDER BY
	r.Id

