-- Informix.DB2 Informix
SELECT
	x.Id,
	x.Name,
	x.CategoryId,
	x."Value",
	x."Timestamp",
	x.IntValue,
	x.NullableIntValue,
	x.LongValue,
	x.NullableLongValue,
	x.DoubleValue,
	x.NullableDoubleValue,
	x.DecimalValue,
	x.NullableDecimalValue,
	x.FloatValue,
	x.NullableFloatValue,
	x.ShortValue,
	x.NullableShortValue,
	x.ByteValue,
	x.NullableByteValue,
	x.BoolValue,
	x.NullableBoolValue,
	NTILE(4) OVER (PARTITION BY x.CategoryId ORDER BY x."Timestamp"),
	NTILE(4) OVER (PARTITION BY x.CategoryId ORDER BY x."Timestamp" DESC)
FROM
	WindowFunctionTestEntity x
ORDER BY
	x.Id

