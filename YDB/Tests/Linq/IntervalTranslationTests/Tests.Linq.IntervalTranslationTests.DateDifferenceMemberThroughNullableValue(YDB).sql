-- YDB Ydb
SELECT
	r.Id as Id
FROM
	ClosedPeriodRow r
WHERE
	CAST(CAST(r.ClosedOnNullable - r.OpenedOn AS Int64) * 10l AS Double) / Double('864000000000') > Double('0')

-- YDB Ydb
SELECT
	r.Id as Id
FROM
	ClosedPeriodRow r
WHERE
	CAST(CAST(r.ClosedOnNullable - r.OpenedOn AS Int64) * 10l AS Double) / Double('36000000000') > Double('0')

-- YDB Ydb
DECLARE $asOf Timestamp -- DateTime2
SET     $asOf = Timestamp('2026-01-03T13:30:00.000000Z')

SELECT
	r.Id as Id
FROM
	ClosedPeriodRow r
WHERE
	CAST(CAST($asOf - r.ClosedOnNullable AS Int64) * 10l AS Double) / Double('864000000000') > Double('0')

-- YDB Ydb
SELECT
	CAST(CAST(r.ClosedOnNullable - r.OpenedOn AS Int64) * 10l AS Double) / Double('36000000000') as c1
FROM
	ClosedPeriodRow r
WHERE
	r.Id = 1
LIMIT 2

-- YDB Ydb
SELECT
	r.Id as Id
FROM
	ClosedPeriodRow r
WHERE
	CAST((CAST(r.ClosedOnNullable - r.OpenedOn AS Int64) * 10l) / 864000000000l AS Int32) > 0

-- YDB Ydb
SELECT
	r.Id as Id
FROM
	ClosedPeriodRow r
WHERE
	CAST(((CAST(r.ClosedOnNullable - r.OpenedOn AS Int64) * 10l) / 36000000000l) % 24l AS Int32) > 0

-- YDB Ydb
SELECT
	CAST((CAST(r.ClosedOnNullable - r.OpenedOn AS Int64) * 10l) / 864000000000l AS Int32) as Days,
	CAST(((CAST(r.ClosedOnNullable - r.OpenedOn AS Int64) * 10l) / 36000000000l) % 24l AS Int32) as Hours
FROM
	ClosedPeriodRow r
ORDER BY
	r.Id

