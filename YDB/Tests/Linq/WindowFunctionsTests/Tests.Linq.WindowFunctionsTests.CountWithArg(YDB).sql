-- YDB Ydb

SELECT
	COUNT(t.NullableIntValue) OVER (PARTITION BY t.CategoryId ORDER BY t.Id) as c1
FROM
	WindowFunctionTestEntity t

