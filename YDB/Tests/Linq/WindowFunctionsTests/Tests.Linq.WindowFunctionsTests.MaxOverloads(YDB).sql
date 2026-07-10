-- YDB Ydb
SELECT
	MAX(t.IntValue) OVER (PARTITION BY t.CategoryId ORDER BY t.Id) as c1,
	MAX(t.NullableIntValue) OVER (PARTITION BY t.CategoryId ORDER BY t.Id) as c2,
	MAX(t.LongValue) OVER (PARTITION BY t.CategoryId ORDER BY t.Id) as c3,
	MAX(t.NullableLongValue) OVER (PARTITION BY t.CategoryId ORDER BY t.Id) as c4,
	MAX(t.DoubleValue) OVER (PARTITION BY t.CategoryId ORDER BY t.Id) as c5,
	MAX(t.NullableDoubleValue) OVER (PARTITION BY t.CategoryId ORDER BY t.Id) as c6,
	MAX(t.DecimalValue) OVER (PARTITION BY t.CategoryId ORDER BY t.Id) as c7,
	MAX(t.NullableDecimalValue) OVER (PARTITION BY t.CategoryId ORDER BY t.Id) as c8,
	MAX(t.FloatValue) OVER (PARTITION BY t.CategoryId ORDER BY t.Id) as c9,
	MAX(t.NullableFloatValue) OVER (PARTITION BY t.CategoryId ORDER BY t.Id) as c10,
	MAX(t.ShortValue) OVER (PARTITION BY t.CategoryId ORDER BY t.Id) as c11,
	MAX(t.NullableShortValue) OVER (PARTITION BY t.CategoryId ORDER BY t.Id) as c12,
	MAX(t.ByteValue) OVER (PARTITION BY t.CategoryId ORDER BY t.Id) as c13,
	MAX(t.NullableByteValue) OVER (PARTITION BY t.CategoryId ORDER BY t.Id) as c14
FROM
	WindowFunctionTestEntity t

