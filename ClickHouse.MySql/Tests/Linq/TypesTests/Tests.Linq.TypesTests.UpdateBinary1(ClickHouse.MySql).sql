-- ClickHouse.MySql ClickHouse

ALTER TABLE
	LinqDataTypes
UPDATE
	BinaryValue = '\x01\x02\x03\x04\x05'
WHERE
	ID = 1

-- ClickHouse.MySql ClickHouse

SELECT
	t.BinaryValue
FROM
	LinqDataTypes t
WHERE
	t.ID = 1

