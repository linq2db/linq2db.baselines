-- YDB Ydb
SELECT
	r.Id as Id
FROM
	Issue5777Row r
WHERE
	CAST(CAST(r.ClosedOnNullable - r.OpenedOn AS Int64) * 10l AS Double) / Double('864000000000') > Double('0')

-- YDB Ydb
SELECT
	r.Id as Id
FROM
	Issue5777Row r
WHERE
	CAST(CAST(r.ClosedOnNullable - r.OpenedOn AS Int64) * 10l AS Double) / Double('36000000000') > Double('0')

-- YDB Ydb
SELECT
	r.Id as Id
FROM
	Issue5777Row r
WHERE
	CAST(CAST(Timestamp('2026-10-01T00:00:00.000000Z') - r.ClosedOnNullable AS Int64) * 10l AS Double) / Double('864000000000') > Double('0')

-- YDB Ydb
SELECT
	CAST(CAST(r.ClosedOnNullable - r.OpenedOn AS Int64) * 10l AS Double) / Double('36000000000') as c1
FROM
	Issue5777Row r
WHERE
	r.Id = 1
LIMIT 2

