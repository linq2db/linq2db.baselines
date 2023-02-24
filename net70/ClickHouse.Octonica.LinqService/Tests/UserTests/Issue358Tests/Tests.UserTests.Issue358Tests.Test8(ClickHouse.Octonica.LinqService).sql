BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
	CASE
		WHEN _.BigIntValue IN (toInt64(2))
			THEN toInt32(1)
		ELSE toInt32(0)
	END = false

