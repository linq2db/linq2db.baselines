BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO LinqDataTypes
(
	ID,
	MoneyValue,
	DateTimeValue,
	BoolValue,
	GuidValue,
	BinaryValue,
	SmallIntValue,
	StringValue
)
VALUES
(
	toInt32(5000),
	toDecimal64('0', 4),
	toDateTime64('2018-01-03 00:00:00.000', 3),
	false,
	toUUID('00000000-0000-0000-0000-000000000000'),
	NULL,
	toInt16(2),
	NULL
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	Count(*)
FROM
	LinqDataTypes t
WHERE
	t.ID = toInt32(5000) AND addDays(t.DateTimeValue, t.SmallIntValue) > toDateTime64('2018-01-02 00:00:00.0000000', 7)

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	LinqDataTypes
DELETE WHERE
	ID = toInt32(5000)

