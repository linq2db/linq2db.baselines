-- YDB Ydb

SELECT
	MIN(t.IntValue) OVER (PARTITION BY t.CategoryId ORDER BY t.Id) as c1,
	MIN(t.NullableIntValue) OVER (PARTITION BY t.CategoryId ORDER BY t.Id) as c2,
	MIN(t.LongValue) OVER (PARTITION BY t.CategoryId ORDER BY t.Id) as c3,
	MIN(t.NullableLongValue) OVER (PARTITION BY t.CategoryId ORDER BY t.Id) as c4,
	MIN(t.DoubleValue) OVER (PARTITION BY t.CategoryId ORDER BY t.Id) as c5,
	MIN(t.NullableDoubleValue) OVER (PARTITION BY t.CategoryId ORDER BY t.Id) as c6,
	MIN(t.DecimalValue) OVER (PARTITION BY t.CategoryId ORDER BY t.Id) as c7,
	MIN(t.NullableDecimalValue) OVER (PARTITION BY t.CategoryId ORDER BY t.Id) as c8,
	MIN(t.FloatValue) OVER (PARTITION BY t.CategoryId ORDER BY t.Id) as c9,
	MIN(t.NullableFloatValue) OVER (PARTITION BY t.CategoryId ORDER BY t.Id) as c10,
	MIN(t.ShortValue) OVER (PARTITION BY t.CategoryId ORDER BY t.Id) as c11,
	MIN(t.NullableShortValue) OVER (PARTITION BY t.CategoryId ORDER BY t.Id) as c12,
	MIN(t.ByteValue) OVER (PARTITION BY t.CategoryId ORDER BY t.Id) as c13,
	MIN(t.NullableByteValue) OVER (PARTITION BY t.CategoryId ORDER BY t.Id) as c14
FROM
	WindowFunctionTestEntity t

