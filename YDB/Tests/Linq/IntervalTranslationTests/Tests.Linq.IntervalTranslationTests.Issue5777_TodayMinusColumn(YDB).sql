-- YDB Ydb
SELECT
	r.Id as Id
FROM
	Issue5777Row r
WHERE
	Unwrap(CAST(Unwrap(CAST(Timestamp('2026-09-30T00:00:00.000000Z') - r.ClosedOn AS Int64)) * 10l AS Double)) / Double('864000000000') > Double('0')

-- YDB Ydb
SELECT
	r.Id as Id
FROM
	Issue5777Row r
WHERE
	Unwrap(CAST(Unwrap(CAST(Timestamp('2026-09-30T00:00:00.000000Z') - r.ClosedOn AS Int64)) * 10l AS Double)) / Double('36000000000') > Double('0')

-- YDB Ydb
SELECT
	r.Id as Id
FROM
	Issue5777Row r
WHERE
	Unwrap(CAST(Unwrap(CAST(Timestamp('2026-09-30T00:00:00.000000Z') - r.ClosedOn AS Int64)) * 10l AS Double)) / Double('600000000') > Double('0')

-- YDB Ydb
SELECT
	r.Id as Id
FROM
	Issue5777Row r
WHERE
	Unwrap(CAST((Unwrap(CAST(Timestamp('2026-09-30T00:00:00.000000Z') - r.ClosedOn AS Int64)) * 10l) / 864000000000l AS Int32)) > 0

-- YDB Ydb
SELECT
	r.Id as Id
FROM
	Issue5777Row r
WHERE
	CAST(CAST(Timestamp('2026-09-30T00:00:00.000000Z') - r.ClosedOnNullable AS Int64) * 10l AS Double) / Double('864000000000') > Double('0')

-- YDB Ydb
SELECT
	r.Id as Id
FROM
	Issue5777Row r
ORDER BY
	Unwrap(CAST(Unwrap(CAST(Timestamp('2026-09-30T00:00:00.000000Z') - r.ClosedOn AS Int64)) * 10l AS Double)) / Double('864000000000')

-- YDB Ydb
SELECT
	Unwrap(CAST(Unwrap(CAST(Timestamp('2026-09-30T00:00:00.000000Z') - r.ClosedOn AS Int64)) * 10l AS Double)) / Double('864000000000') as TotalDays
FROM
	Issue5777Row r
ORDER BY
	r.Id

