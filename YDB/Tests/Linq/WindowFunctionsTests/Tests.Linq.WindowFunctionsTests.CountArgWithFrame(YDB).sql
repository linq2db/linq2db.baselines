-- YDB Ydb
SELECT
	COUNT(t.NullableIntValue) OVER (ORDER BY t.Id ROWS BETWEEN 2 PRECEDING AND 2 FOLLOWING) as c1
FROM
	WindowFunctionTestEntity t

