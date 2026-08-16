-- YDB Ydb
SELECT
	x.Id as Id,
	x.Name as Name,
	x.CategoryId as CategoryId,
	x.`Value` as Value_1,
	x.`Timestamp` as Timestamp_1,
	x.IntValue as IntValue,
	x.NullableIntValue as NullableIntValue,
	x.LongValue as LongValue,
	x.NullableLongValue as NullableLongValue,
	x.DoubleValue as DoubleValue,
	x.NullableDoubleValue as NullableDoubleValue,
	x.DecimalValue as DecimalValue,
	x.NullableDecimalValue as NullableDecimalValue,
	x.FloatValue as FloatValue,
	x.NullableFloatValue as NullableFloatValue,
	x.ShortValue as ShortValue,
	x.NullableShortValue as NullableShortValue,
	x.ByteValue as ByteValue,
	x.NullableByteValue as NullableByteValue,
	x.BoolValue as BoolValue,
	x.NullableBoolValue as NullableBoolValue,
	RANK() OVER (ORDER BY x.IntValue = 20) as rn1,
	RANK() OVER (PARTITION BY x.CategoryId ORDER BY x.IntValue = 20, x.Id) as rn2,
	RANK() OVER (PARTITION BY x.CategoryId ORDER BY x.IntValue = 20 DESC, x.Id) as rn3,
	RANK() OVER (ORDER BY x.NullableIntValue IS NOT NULL, x.Id) as rn4
FROM
	WindowFunctionTestEntity x
ORDER BY
	x.Id

