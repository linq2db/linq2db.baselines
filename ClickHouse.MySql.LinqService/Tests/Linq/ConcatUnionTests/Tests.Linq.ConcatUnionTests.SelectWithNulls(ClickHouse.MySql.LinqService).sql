BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	t1.ID,
	t1.MoneyValue,
	t1.DateTimeValue,
	t1.BoolValue,
	t1.GuidValue,
	t1.BinaryValue,
	t1.SmallIntValue,
	t1.StringValue
FROM
	LinqDataTypes t1
UNION ALL
SELECT
	toInt32(NULL) as ID,
	toDecimal64(NULL, 4) as MoneyValue,
	toDateTime64(NULL, 3) as DateTimeValue,
	toBool(NULL) as BoolValue,
	toUUID(NULL) as GuidValue,
	toString(NULL) as BinaryValue,
	toInt16(NULL) as SmallIntValue,
	toString(NULL) as StringValue
FROM
	LinqDataTypes d

