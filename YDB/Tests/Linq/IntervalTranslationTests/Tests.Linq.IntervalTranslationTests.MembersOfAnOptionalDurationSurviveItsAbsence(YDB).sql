-- YDB Ydb
SELECT
	r.Id as Id,
	CAST((r.Grace / 60l) % 60l AS Int32) as Minutes,
	CAST(r.Grace AS Double) / Double('60') as TotalMinutes,
	Unwrap(CAST(r.Required AS Double)) / Double('60') as TotalMinutes_1
FROM
	OptionalDurationRow r
ORDER BY
	r.Id

