-- YDB Ydb
DECLARE $asOf Timestamp -- DateTime2
SET     $asOf = Timestamp('2026-01-10T08:15:30.000000Z')

SELECT
	r.Id as Id
FROM
	ClosedPeriodRow r
WHERE
	Unwrap(CAST(Unwrap(CAST($asOf - r.ClosedOn AS Int64)) * 10l AS Double)) / Double('864000000000') > Double('0')

-- YDB Ydb
DECLARE $asOf Timestamp -- DateTime2
SET     $asOf = Timestamp('2026-01-10T08:15:30.000000Z')

SELECT
	r.Id as Id
FROM
	ClosedPeriodRow r
WHERE
	Unwrap(CAST(Unwrap(CAST(r.ClosedOn - $asOf AS Int64)) * 10l AS Double)) / Double('36000000000') > Double('0')

-- YDB Ydb
DECLARE $asOf Timestamp -- DateTime2
SET     $asOf = Timestamp('2026-01-10T08:15:30.000000Z')

SELECT
	r.Id as Id
FROM
	ClosedPeriodRow r
ORDER BY
	Unwrap(CAST(Unwrap(CAST($asOf - r.ClosedOn AS Int64)) * 10l AS Double)) / Double('600000000')

-- YDB Ydb
DECLARE $asOf Timestamp -- DateTime2
SET     $asOf = Timestamp('2026-01-10T08:15:30.000000Z')

SELECT
	Unwrap(CAST(Unwrap(CAST(r.ClosedOn - $asOf AS Int64)) * 10l AS Double)) / Double('36000000000') as c1
FROM
	ClosedPeriodRow r
WHERE
	r.Id = 1
LIMIT 2

