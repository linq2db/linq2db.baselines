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
	toDate(_.DateTimeValue) = toDate(makeDateTime(2009, 9, 20, 0, 0, 0))

