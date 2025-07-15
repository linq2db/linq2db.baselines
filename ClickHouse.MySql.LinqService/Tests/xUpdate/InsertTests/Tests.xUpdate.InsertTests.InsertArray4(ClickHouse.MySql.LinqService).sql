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
	BoolValue,
	GuidValue,
	BinaryValue,
	SmallIntValue
)
VALUES
(
	1001,
	toDecimal128('0', 10),
	NULL,
	true,
	toUUID('00000000-0000-0000-0000-000000000000'),
	'\x01\x02\x03\x04',
	toInt16(0)
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t.ID,
	t.MoneyValue,
	t.DateTimeValue,
	t.BoolValue,
	t.GuidValue,
	t.BinaryValue,
	t.SmallIntValue
FROM
	LinqDataTypes t
WHERE
	t.ID = 1001
LIMIT 2

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	LinqDataTypes
DELETE WHERE
	ID > 1000

