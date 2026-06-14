-- ClickHouse.MySql ClickHouse

SELECT
	x.Id,
	x.Name,
	x.CategoryId,
	x.Value,
	x.Timestamp,
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
	PERCENT_RANK() OVER (PARTITION BY x.CategoryId ORDER BY CASE
		WHEN x.Timestamp IS NULL THEN 0
		ELSE 1
	END, x.Timestamp),
	PERCENT_RANK() OVER (PARTITION BY x.CategoryId ORDER BY x.Timestamp DESC)
FROM
	WindowFunctionTestEntity x
ORDER BY
	x.Id

