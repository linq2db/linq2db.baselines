BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	LinqDataTypes
UPDATE
	BinaryValue = '\x01\x02\x03\x04\x05'
WHERE
	ID = toInt32(1)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.BinaryValue
FROM
	LinqDataTypes t
WHERE
	t.ID = toInt32(1)

