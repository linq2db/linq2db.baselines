BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	LinqDataTypes
DELETE WHERE
	ID > toInt32(1000)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO LinqDataTypes
(
	ID,
	BoolValue,
	BinaryValue
)
VALUES
(
	toInt32(1001),
	true,
	'\x01\x02\x03\x04'
)

BeforeExecute
-- ClickHouse.Client ClickHouse

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
	t.ID = toInt32(1001)
LIMIT toInt32(2)

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	LinqDataTypes
DELETE WHERE
	ID > toInt32(1000)

