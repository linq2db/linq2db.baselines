-- YDB Ydb
SELECT
	SUM(p.Value1) OVER (ORDER BY p.Value1) as c1
FROM
	Parent p

