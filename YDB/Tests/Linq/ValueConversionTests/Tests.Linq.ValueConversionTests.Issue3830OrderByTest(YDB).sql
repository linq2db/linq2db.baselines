-- YDB Ydb
SELECT
	r.Id as Id
FROM
	Issue3830TestTable r
ORDER BY
	r.Bool1,
	r.Id

