-- ClickHouse.MySql ClickHouse

SELECT
	t.Id,
	t.Value,
	t.Flags
FROM
	MappingTestClass t
WHERE
	bitAnd(t.Flags, toInt32(1)) <> 0

