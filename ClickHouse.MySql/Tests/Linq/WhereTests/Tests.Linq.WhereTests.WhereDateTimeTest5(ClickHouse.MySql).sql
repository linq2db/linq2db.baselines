BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	_.ID,
	_.MoneyValue,
	_.DateTimeValue,
	_.BoolValue,
	_.GuidValue,
	_.BinaryValue,
	_.SmallIntValue,
	_.StringValue
FROM
	LinqDataTypes _
WHERE
	toDate32(_.DateTimeValue) = toDateTime64('2009-09-20 00:00:00.0000000', 7)

