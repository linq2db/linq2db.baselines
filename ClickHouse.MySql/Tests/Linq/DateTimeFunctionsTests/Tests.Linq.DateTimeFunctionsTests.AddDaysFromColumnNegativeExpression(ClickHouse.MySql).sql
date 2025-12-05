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
	5000,
	toDecimal64('0', 4),
	toDateTime64('2018-01-03 00:00:00.000', 3),
	false,
	toUUID('00000000-0000-0000-0000-000000000000'),
	NULL,
	toInt16(-2),
	NULL
)

-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	LinqDataTypes t
WHERE
	t.ID = 5000 AND addDays(t.DateTimeValue, t.SmallIntValue) < makeDateTime(2018, 1, 2, 0, 0, 0)

-- ClickHouse.MySql ClickHouse

ALTER TABLE
	LinqDataTypes
DELETE WHERE
	ID = 5000

