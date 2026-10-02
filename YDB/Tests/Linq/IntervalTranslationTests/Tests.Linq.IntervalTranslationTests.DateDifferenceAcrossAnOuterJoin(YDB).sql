-- YDB Ydb
SELECT
	CAST(CAST(b.FinishedOn - x.StartedOn AS Int64) * 10l AS Double) / Double('864000000000') as TotalDays,
	CAST((CAST(b.FinishedOn - x.StartedOn AS Int64) * 10l) / 864000000000l AS Int32) as Days
FROM
	OuterJoinLeft x
		LEFT JOIN OuterJoinRight b ON b.Id = x.Id
ORDER BY
	x.Id

-- YDB Ydb
SELECT
	x.Id as Id
FROM
	OuterJoinLeft x
		LEFT JOIN OuterJoinRight b ON b.Id = x.Id
WHERE
	CAST(CAST(b.FinishedOn - x.StartedOn AS Int64) * 10l AS Double) / Double('864000000000') > Double('1')

