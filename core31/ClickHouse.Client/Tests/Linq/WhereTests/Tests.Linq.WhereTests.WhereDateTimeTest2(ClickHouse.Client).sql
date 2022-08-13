BeforeExecute
-- ClickHouse.Client ClickHouse

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
	_.DateTimeValue > toDateTime64('2009-01-01 00:00:00.000', 3)

