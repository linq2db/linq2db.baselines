-- YDB Ydb
SELECT
	r.Id as Id,
	CAST(NULL AS Bool) as Value_1
FROM
	NullableFlagTable r
ORDER BY
	r.Id

