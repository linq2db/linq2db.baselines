BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	LinqDataTypes
UPDATE
	BinaryValue = '\x01\x02\x03\x04\x05'
WHERE
	ID = 1

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	Length(t.BinaryValue)
FROM
	LinqDataTypes t
WHERE
	t.ID = 1
LIMIT 1

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	LinqDataTypes
UPDATE
	BinaryValue = NULL
WHERE
	ID = 1

