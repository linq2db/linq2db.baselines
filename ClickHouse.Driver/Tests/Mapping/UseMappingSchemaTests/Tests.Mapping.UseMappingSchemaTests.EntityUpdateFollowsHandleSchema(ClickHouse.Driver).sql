-- ClickHouse.Driver ClickHouse
ALTER TABLE
	SourceSchemaRow
UPDATE
	Value = 6,
	Name = 'b'
WHERE
	Id = 1

-- ClickHouse.Driver ClickHouse
SELECT
	t1.Id,
	t1.Value,
	t1.Name
FROM
	SourceSchemaRow t1
LIMIT 2

