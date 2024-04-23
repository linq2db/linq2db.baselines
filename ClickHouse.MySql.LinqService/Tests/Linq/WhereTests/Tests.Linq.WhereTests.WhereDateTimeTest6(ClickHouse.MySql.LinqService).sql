BeforeExecute
-- ClickHouse.MySql ClickHouse

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
	toDate(_.DateTimeValue) = toDate(makeDateTime(2009, 9, 20, 0, 0, 0))

