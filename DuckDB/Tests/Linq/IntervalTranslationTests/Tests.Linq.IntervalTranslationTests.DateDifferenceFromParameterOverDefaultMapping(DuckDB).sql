-- DuckDB
DECLARE $asOf  -- DateTime2
SET     $asOf = '2026-01-10 08:15:30.000000'::TIMESTAMP

SELECT
	r.Id
FROM
	ClosedPeriodRow r
WHERE
	CAST(Date_Diff('microsecond', r.ClosedOn, CAST($asOf AS TIMESTAMP)) * 10 AS DOUBLE) / 864000000000 > 0

-- DuckDB
DECLARE $asOf  -- DateTime2
SET     $asOf = '2026-01-10 08:15:30.000000'::TIMESTAMP

SELECT
	r.Id
FROM
	ClosedPeriodRow r
WHERE
	CAST(Date_Diff('microsecond', CAST($asOf AS TIMESTAMP), r.ClosedOn) * 10 AS DOUBLE) / 36000000000 > 0

-- DuckDB
DECLARE $asOf  -- DateTime2
SET     $asOf = '2026-01-10 08:15:30.000000'::TIMESTAMP

SELECT
	r.Id
FROM
	ClosedPeriodRow r
ORDER BY
	CAST(Date_Diff('microsecond', r.ClosedOn, CAST($asOf AS TIMESTAMP)) * 10 AS DOUBLE) / 600000000

-- DuckDB
DECLARE $asOf  -- DateTime2
SET     $asOf = '2026-01-10 08:15:30.000000'::TIMESTAMP

SELECT
	CAST(Date_Diff('microsecond', CAST($asOf AS TIMESTAMP), r.ClosedOn) * 10 AS DOUBLE) / 36000000000
FROM
	ClosedPeriodRow r
WHERE
	r.Id = 1
LIMIT 2

