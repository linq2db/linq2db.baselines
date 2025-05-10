BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.Id,
	t.Value,
	t.Flags
FROM
	MappingTestClass t
WHERE
	bitAnd(t.Flags, toInt32(1)) <> 0 OR t.Flags IS NULL

