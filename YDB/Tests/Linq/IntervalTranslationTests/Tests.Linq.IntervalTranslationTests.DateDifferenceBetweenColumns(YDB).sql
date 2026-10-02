-- YDB Ydb
SELECT
	r.Id as Id
FROM
	ClosedPeriodRow r
WHERE
	Unwrap(CAST(Unwrap(CAST(r.ClosedOn - r.OpenedOn AS Int64)) * 10l AS Double)) / Double('864000000000') < Double('12')

-- YDB Ydb
SELECT
	r.Id as Id
FROM
	ClosedPeriodRow r
ORDER BY
	Unwrap(CAST(Unwrap(CAST(r.ClosedOn - r.OpenedOn AS Int64)) * 10l AS Double)) / Double('36000000000')

-- YDB Ydb
SELECT
	Unwrap(CAST(Unwrap(CAST(r.ClosedOn - r.OpenedOn AS Int64)) * 10l AS Double)) / Double('864000000000') as TotalDays,
	Unwrap(CAST(Unwrap(CAST(r.ClosedOn - r.OpenedOn AS Int64)) * 10l AS Double)) / Double('36000000000') as TotalHours,
	Unwrap(CAST(Unwrap(CAST(r.ClosedOn - r.OpenedOn AS Int64)) * 10l AS Double)) / Double('600000000') as TotalMinutes,
	Unwrap(CAST((Unwrap(CAST(r.ClosedOn - r.OpenedOn AS Int64)) * 10l) / 864000000000l AS Int32)) as Days,
	Unwrap(CAST(((Unwrap(CAST(r.ClosedOn - r.OpenedOn AS Int64)) * 10l) / 36000000000l) % 24l AS Int32)) as Hours
FROM
	ClosedPeriodRow r
WHERE
	r.Id = 1
LIMIT 2

