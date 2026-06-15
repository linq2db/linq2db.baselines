-- YDB Ydb

SELECT
	AVG(t.IntValue) OVER (PARTITION BY t.CategoryId ORDER BY t.Id) as c1,
	AVG(t.NullableIntValue) OVER (PARTITION BY t.CategoryId ORDER BY t.Id) as c2,
	AVG(t.LongValue) OVER (PARTITION BY t.CategoryId ORDER BY t.Id) as c3,
	AVG(t.NullableLongValue) OVER (PARTITION BY t.CategoryId ORDER BY t.Id) as c4,
	AVG(t.DoubleValue) OVER (PARTITION BY t.CategoryId ORDER BY t.Id) as c5,
	AVG(t.NullableDoubleValue) OVER (PARTITION BY t.CategoryId ORDER BY t.Id) as c6,
	AVG(t.DecimalValue) OVER (PARTITION BY t.CategoryId ORDER BY t.Id) as c7,
	AVG(t.NullableDecimalValue) OVER (PARTITION BY t.CategoryId ORDER BY t.Id) as c8,
	AVG(t.FloatValue) OVER (PARTITION BY t.CategoryId ORDER BY t.Id) as c9,
	AVG(t.NullableFloatValue) OVER (PARTITION BY t.CategoryId ORDER BY t.Id) as c10,
	AVG(t.ShortValue) OVER (PARTITION BY t.CategoryId ORDER BY t.Id) as c11,
	AVG(t.NullableShortValue) OVER (PARTITION BY t.CategoryId ORDER BY t.Id) as c12,
	AVG(t.ByteValue) OVER (PARTITION BY t.CategoryId ORDER BY t.Id) as c13,
	AVG(t.NullableByteValue) OVER (PARTITION BY t.CategoryId ORDER BY t.Id) as c14
FROM
	WindowFunctionTestEntity t

