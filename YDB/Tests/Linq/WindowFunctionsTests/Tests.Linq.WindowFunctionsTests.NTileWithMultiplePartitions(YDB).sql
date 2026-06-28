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
	NTILE(4) OVER (PARTITION BY x.CategoryId, x.Name ORDER BY x.`Timestamp`) as nt1,
	NTILE(4) OVER (PARTITION BY x.CategoryId, x.Name ORDER BY x.`Value`) as nt2,
	NTILE(4) OVER (PARTITION BY x.CategoryId, x.Name ORDER BY x.`Timestamp` DESC) as nt3,
	NTILE(4) OVER (PARTITION BY x.CategoryId, x.Name ORDER BY x.`Value` DESC) as nt4,
	NTILE(4) OVER (PARTITION BY x.CategoryId, x.Name ORDER BY x.`Timestamp`, x.`Value`) as nt5,
	NTILE(4) OVER (PARTITION BY x.CategoryId, x.Name ORDER BY x.`Timestamp` DESC, x.`Value` DESC) as nt6
FROM
	WindowFunctionTestEntity x
ORDER BY
	x.Id

