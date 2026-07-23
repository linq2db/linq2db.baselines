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
	PERCENT_RANK() OVER (ORDER BY x.`Timestamp`) as rn1,
	PERCENT_RANK() OVER (ORDER BY x.`Value`) as rn2,
	PERCENT_RANK() OVER (ORDER BY x.`Timestamp` DESC) as rn3,
	PERCENT_RANK() OVER (ORDER BY x.`Value` DESC) as rn4,
	PERCENT_RANK() OVER (ORDER BY x.`Timestamp`, x.`Value`) as rn5,
	PERCENT_RANK() OVER (ORDER BY x.`Timestamp` DESC, x.`Value` DESC) as rn6
FROM
	WindowFunctionTestEntity x
ORDER BY
	x.Id

