BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	t1.ID,
	t1.MoneyValue,
	t1.DateTimeValue,
	t1.DateTimeValue2,
	t1.BoolValue,
	t1.GuidValue,
	t1.SmallIntValue,
	t1.IntValue,
	t1.BigIntValue,
	t1.StringValue
FROM
	LinqDataTypes t1
UNION ALL
SELECT
	toInt32(NULL) as ID,
	toDecimal128(NULL, 10) as MoneyValue,
	toDateTime64(NULL, 3) as DateTimeValue,
	toDateTime64(NULL, 7) as DateTimeValue2,
	toBool(NULL) as BoolValue,
	toUUID(NULL) as GuidValue,
	toInt16(NULL) as SmallIntValue,
	toInt32(NULL) as IntValue,
	toInt64(NULL) as BigIntValue,
	toString(NULL) as StringValue
FROM
	LinqDataTypes d

