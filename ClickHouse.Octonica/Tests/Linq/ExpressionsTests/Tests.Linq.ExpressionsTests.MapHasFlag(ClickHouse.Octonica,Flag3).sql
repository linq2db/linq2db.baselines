-- ClickHouse.Octonica ClickHouse

SELECT
	t.Id,
	t.Value,
	t.Flags
FROM
	MappingTestClass t
WHERE
	bitAnd(t.Flags, 4) <> 0

