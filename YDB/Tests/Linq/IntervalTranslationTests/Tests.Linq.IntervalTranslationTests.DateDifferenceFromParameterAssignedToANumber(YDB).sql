-- YDB Ydb
DECLARE $asOf Timestamp -- DateTime2
SET     $asOf = Timestamp('2026-01-10T08:15:30.000000Z')

UPDATE
	MeasuredPeriodRow
SET
	Elapsed = Unwrap(CAST(Unwrap(CAST($asOf - MeasuredPeriodRow.ClosedOn AS Int64)) * 10l AS Double)) / Double('864000000000')
WHERE
	MeasuredPeriodRow.Id = 1

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.ClosedOn as ClosedOn,
	t1.Elapsed as Elapsed
FROM
	MeasuredPeriodRow t1
LIMIT 2

-- YDB Ydb
DECLARE $asOf Timestamp -- DateTime2
SET     $asOf = Timestamp('2026-01-10T08:15:30.000000Z')

SELECT
	r.Id as Id
FROM
	MeasuredPeriodRow r
WHERE
	r.Elapsed < Unwrap(CAST(Unwrap(CAST($asOf - r.ClosedOn AS Int64)) * 10l AS Double)) / Double('36000000000')

-- YDB Ydb
DECLARE $asOf Timestamp -- DateTime2
SET     $asOf = Timestamp('2026-01-10T08:15:30.000000Z')

UPDATE
	MeasuredPeriodRow
SET
	Elapsed = Unwrap(CAST(Unwrap(CAST(MeasuredPeriodRow.ClosedOn - $asOf AS Int64)) * 10l AS Double)) / Double('36000000000')
WHERE
	MeasuredPeriodRow.Id = 1

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.ClosedOn as ClosedOn,
	t1.Elapsed as Elapsed
FROM
	MeasuredPeriodRow t1
LIMIT 2

-- YDB Ydb
DECLARE $asOf Timestamp -- DateTime2
SET     $asOf = Timestamp('2026-01-10T08:15:30.000000Z')

SELECT
	r.Id as Id
FROM
	MeasuredPeriodRow r
WHERE
	r.Elapsed < Unwrap(CAST(Unwrap(CAST(r.ClosedOn - $asOf AS Int64)) * 10l AS Double)) / Double('864000000000')

