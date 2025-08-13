BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	LinqDataTypes
DELETE WHERE
	ID > 1000

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO LinqDataTypes
(
	ID,
	MoneyValue,
	DateTimeValue,
	DateTimeValue2,
	BoolValue,
	GuidValue,
	SmallIntValue,
	IntValue,
	BigIntValue,
	StringValue
)
VALUES
(1003,toDecimal128('0', 10),NULL,NULL,true,toUUID('ef129165-6ffe-4df9-bb6b-bb16e413c883'),NULL,NULL,NULL,NULL),
(1004,toDecimal128('0', 10),NULL,NULL,true,toUUID('ef129165-6ffe-4df9-bb6b-bb16e413c883'),NULL,NULL,NULL,NULL)

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	LinqDataTypes
DELETE WHERE
	ID > 1000

