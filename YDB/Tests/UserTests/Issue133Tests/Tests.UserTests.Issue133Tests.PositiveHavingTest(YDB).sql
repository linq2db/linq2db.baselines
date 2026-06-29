-- YDB Ydb

SELECT
	COUNT(*) * 100E0 / SUM(COUNT(*)) OVER() as CountPercents,
	SUM(t1.ParentID) as Sum_1
FROM
	Child t1
GROUP BY
	t1.ParentID
HAVING
	SUM(t1.ParentID) <> 36

