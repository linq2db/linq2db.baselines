-- YDB Ydb
SELECT
	r.Id as Id
FROM
	OptionalDurationRow r
WHERE
	r.Grace > 1800l
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	r.Id as Id
FROM
	OptionalDurationRow r
WHERE
	r.Required > 1800l
ORDER BY
	r.Id

