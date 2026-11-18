-- YDB Ydb
SELECT
	r.Id as Id,
	CASE
		WHEN r.A = r.B THEN true
		ELSE false
	END as Value_1
FROM
	NullableFlagTable r
ORDER BY
	r.Id

