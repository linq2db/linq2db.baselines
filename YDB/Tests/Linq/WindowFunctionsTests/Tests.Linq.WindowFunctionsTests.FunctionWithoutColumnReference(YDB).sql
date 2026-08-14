-- YDB Ydb
SELECT
	COUNT(*) OVER () as c1,
	COUNT(1) OVER () as c2,
	SUM(t.IntValue) OVER () > 0 as c3
FROM
	WindowFunctionTestEntity t

