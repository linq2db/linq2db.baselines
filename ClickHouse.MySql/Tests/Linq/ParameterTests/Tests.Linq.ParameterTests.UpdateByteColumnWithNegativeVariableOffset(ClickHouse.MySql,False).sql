-- ClickHouse.MySql ClickHouse
ALTER TABLE
	ByteFieldUpdateTable
UPDATE
	Field = toUInt8(toInt32(Field) + -1)
WHERE 1

-- ClickHouse.MySql ClickHouse
SELECT
	t1.Id,
	t1.Field
FROM
	ByteFieldUpdateTable t1
LIMIT 2

