-- YDB Ydb

SELECT
	LEAD(t.DoubleValue) OVER (ORDER BY t.Id) as c1,
	LAG(t.DecimalValue) OVER (ORDER BY t.Id) as c2,
	LEAD(t.NullableIntValue) OVER (ORDER BY t.Id) as c3,
	LEAD(t.IntValue) OVER (ORDER BY t.CategoryId, t.Id) as c4
FROM
	WindowFunctionTestEntity t

