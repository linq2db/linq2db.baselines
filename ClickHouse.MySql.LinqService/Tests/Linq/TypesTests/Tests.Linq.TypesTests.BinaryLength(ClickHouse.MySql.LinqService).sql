BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	LinqDataTypes
UPDATE
	BinaryValue = '\x01\x02\x03\x04\x05'
WHERE
	ID = toInt32(1)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	Length(t.BinaryValue)
FROM
	LinqDataTypes t
WHERE
	t.ID = toInt32(1)
LIMIT toInt32(1)

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	LinqDataTypes
UPDATE
	BinaryValue = NULL
WHERE
	ID = toInt32(1)

