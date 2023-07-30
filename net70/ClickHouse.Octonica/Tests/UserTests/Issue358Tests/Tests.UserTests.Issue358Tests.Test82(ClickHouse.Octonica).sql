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
			THEN toUInt8(1)
		ELSE toUInt8(0)
	END = true

