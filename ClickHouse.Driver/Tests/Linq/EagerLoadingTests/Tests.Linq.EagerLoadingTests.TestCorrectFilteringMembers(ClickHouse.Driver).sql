BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	e1.Id1,
	e1.Value as Value_1,
	e1.ByteValues
FROM
	MasterClass e1
UNION ALL
SELECT
	e.Id1 as Id1,
	toString('Str') as Value_1,
	e.ByteValues as ByteValues
FROM
	MasterClass e

