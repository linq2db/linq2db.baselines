-- DuckDB
DECLARE $asOf  -- DateTime2
SET     $asOf = '2026-01-10 08:15:30.000000'::TIMESTAMP

UPDATE
	MeasuredPeriodRow
SET
	Elapsed = CAST(Date_Diff('microsecond', MeasuredPeriodRow.ClosedOn, CAST($asOf AS TIMESTAMP)) * 10 AS DOUBLE) / 864000000000
WHERE
	MeasuredPeriodRow.Id = 1

-- DuckDB
SELECT
	t1.Id,
	t1.ClosedOn,
	t1.Elapsed
FROM
	MeasuredPeriodRow t1
LIMIT 2

-- DuckDB
DECLARE $asOf  -- DateTime2
SET     $asOf = '2026-01-10 08:15:30.000000'::TIMESTAMP

SELECT
	r.Id
FROM
	MeasuredPeriodRow r
WHERE
	r.Elapsed < CAST(Date_Diff('microsecond', r.ClosedOn, CAST($asOf AS TIMESTAMP)) * 10 AS DOUBLE) / 36000000000

-- DuckDB
DECLARE $asOf  -- DateTime2
SET     $asOf = '2026-01-10 08:15:30.000000'::TIMESTAMP

UPDATE
	MeasuredPeriodRow
SET
	Elapsed = CAST(Date_Diff('microsecond', CAST($asOf AS TIMESTAMP), MeasuredPeriodRow.ClosedOn) * 10 AS DOUBLE) / 36000000000
WHERE
	MeasuredPeriodRow.Id = 1

-- DuckDB
SELECT
	t1.Id,
	t1.ClosedOn,
	t1.Elapsed
FROM
	MeasuredPeriodRow t1
LIMIT 2

-- DuckDB
DECLARE $asOf  -- DateTime2
SET     $asOf = '2026-01-10 08:15:30.000000'::TIMESTAMP

SELECT
	r.Id
FROM
	MeasuredPeriodRow r
WHERE
	r.Elapsed < CAST(Date_Diff('microsecond', CAST($asOf AS TIMESTAMP), r.ClosedOn) * 10 AS DOUBLE) / 864000000000

