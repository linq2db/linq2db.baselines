BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	LinqDataTypes
DELETE WHERE
	ID > 1000

BeforeExecute
INSERT ASYNC BULK LinqDataTypes(ID, MoneyValue, DateTimeValue, DateTimeValue2, BoolValue, GuidValue, SmallIntValue, IntValue, BigIntValue, StringValue)

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	LinqDataTypes
DELETE WHERE
	ID > 1000

