-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.Code as Code
FROM
	(
		SELECT
			r.Id as Id,
			r.Code as Code
		FROM
			Issue6052RowA r
		UNION
		SELECT
			r_1.Id as Id,
			r_1.Code as Code
		FROM
			Issue6052RowB r_1
	) t1
ORDER BY
	t1.Id

