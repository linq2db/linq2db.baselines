-- ClickHouse.MySql ClickHouse
ALTER TABLE
	SourceSchemaRow
UPDATE
	Value = 6,
	Name = 'b'
WHERE
	Id = 1

-- ClickHouse.MySql ClickHouse
SELECT
	t1.Id,
	t1.Value,
	t1.Name
FROM
	SourceSchemaRow t1
LIMIT 2

