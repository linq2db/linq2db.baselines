-- ClickHouse.Driver ClickHouse

SELECT
	t.Id,
	t.Value,
	t.Flags
FROM
	MappingTestClass t
WHERE
	bitAnd(t.Flags, toInt32(4)) <> 0

