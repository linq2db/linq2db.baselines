BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

ALTER TABLE
	Issue4963Table
UPDATE
	Field = toUInt8(toInt32(Field) + -1)
WHERE 1

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	t1.Field
FROM
	Issue4963Table t1
LIMIT 2

