-- YDB Ydb
SELECT
	r.Id as Id
FROM
	OptionalDurationRow r
WHERE
	CAST(CAST(r.Grace AS Int64) * 10000000l AS Double) / Double('600000000') > Double('30')
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	r.Id as Id
FROM
	OptionalDurationRow r
WHERE
	Unwrap(CAST(Unwrap(CAST(r.Required AS Int64)) * 10000000l AS Double)) / Double('600000000') > Double('30')
ORDER BY
	r.Id

