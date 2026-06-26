-- YDB Ydb

SELECT
	SUM(t.IntValue) OVER (PARTITION BY t.CategoryId ORDER BY t.Id) as c1,
	SUM(t.NullableIntValue) OVER (PARTITION BY t.CategoryId ORDER BY t.Id) as c2,
	SUM(t.LongValue) OVER (PARTITION BY t.CategoryId ORDER BY t.Id) as c3,
	SUM(t.NullableLongValue) OVER (PARTITION BY t.CategoryId ORDER BY t.Id) as c4,
	SUM(t.DoubleValue) OVER (PARTITION BY t.CategoryId ORDER BY t.Id) as c5,
	SUM(t.NullableDoubleValue) OVER (PARTITION BY t.CategoryId ORDER BY t.Id) as c6,
	SUM(t.DecimalValue) OVER (PARTITION BY t.CategoryId ORDER BY t.Id) as c7,
	SUM(t.NullableDecimalValue) OVER (PARTITION BY t.CategoryId ORDER BY t.Id) as c8,
	SUM(t.FloatValue) OVER (PARTITION BY t.CategoryId ORDER BY t.Id) as c9,
	SUM(t.NullableFloatValue) OVER (PARTITION BY t.CategoryId ORDER BY t.Id) as c10,
	SUM(t.ShortValue) OVER (PARTITION BY t.CategoryId ORDER BY t.Id) as c11,
	SUM(CAST(t.NullableShortValue AS Int32)) OVER (PARTITION BY t.CategoryId ORDER BY t.Id) as c12,
	SUM(Unwrap(CAST(t.ByteValue AS Int32))) OVER (PARTITION BY t.CategoryId ORDER BY t.Id) as c13,
	SUM(CAST(t.NullableByteValue AS Int32)) OVER (PARTITION BY t.CategoryId ORDER BY t.Id) as c14
FROM
	WindowFunctionTestEntity t

