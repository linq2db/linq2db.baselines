-- YDB Ydb
SELECT
	r.Id as Id,
	CAST(((CAST(r.Grace AS Int64) * 10000000l) / 600000000l) % 60l AS Int32) as Minutes,
	CAST(CAST(r.Grace AS Int64) * 10000000l AS Double) / Double('600000000') as TotalMinutes,
	Unwrap(CAST(Unwrap(CAST(r.Required AS Int64)) * 10000000l AS Double)) / Double('600000000') as TotalMinutes_1
FROM
	OptionalDurationRow r
ORDER BY
	r.Id

