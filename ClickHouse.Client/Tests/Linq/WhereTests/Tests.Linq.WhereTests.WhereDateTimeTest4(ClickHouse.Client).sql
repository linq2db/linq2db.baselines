BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	_.ID,
	_.MoneyValue,
	_.DateTimeValue,
	_.DateTimeValue2,
	_.BoolValue,
	_.GuidValue,
	_.SmallIntValue,
	_.IntValue,
	_.BigIntValue,
	_.StringValue
FROM
	LinqDataTypes _
WHERE
	_.DateTimeValue = toDateTime64('2009-09-27 00:00:00.000', 3)

