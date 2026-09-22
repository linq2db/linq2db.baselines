-- YDB Ydb
SELECT
	row_1.Id as Id,
	row_1.Q1 as Q1
FROM
	QuarterlySales row_1
WHERE
	row_1.Q1 IS NOT NULL

