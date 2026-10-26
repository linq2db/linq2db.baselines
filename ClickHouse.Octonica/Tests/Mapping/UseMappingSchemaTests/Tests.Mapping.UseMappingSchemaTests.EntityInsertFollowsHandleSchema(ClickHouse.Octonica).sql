-- ClickHouse.Octonica ClickHouse
INSERT INTO SourceSchemaRow
(
	Id,
	Value,
	Name
)
VALUES
(
	1,
	5,
	'a'
)

-- ClickHouse.Octonica ClickHouse
SELECT
	t1.Id,
	t1.Value,
	t1.Name
FROM
	SourceSchemaRow t1
LIMIT 2

