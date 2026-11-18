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
	NTILE(4) OVER (PARTITION BY x.CategoryId ORDER BY x.`Timestamp`) as nt7,
	NTILE(4) OVER (PARTITION BY x.CategoryId ORDER BY x.`Timestamp` DESC) as nt8
FROM
	WindowFunctionTestEntity x
ORDER BY
	x.Id

