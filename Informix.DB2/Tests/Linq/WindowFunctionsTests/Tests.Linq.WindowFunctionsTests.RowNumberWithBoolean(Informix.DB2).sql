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
	ROW_NUMBER() OVER (ORDER BY x.IntValue = 20, x.Id),
	ROW_NUMBER() OVER (PARTITION BY CASE
		WHEN x.IntValue = 20 THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END ORDER BY x.Id),
	ROW_NUMBER() OVER (PARTITION BY CASE
		WHEN x.NullableIntValue IS NOT NULL THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END ORDER BY x.Id),
	ROW_NUMBER() OVER (PARTITION BY x.CategoryId ORDER BY x.NullableIntValue IS NOT NULL, x.Id)
FROM
	WindowFunctionTestEntity x
ORDER BY
	x.Id

