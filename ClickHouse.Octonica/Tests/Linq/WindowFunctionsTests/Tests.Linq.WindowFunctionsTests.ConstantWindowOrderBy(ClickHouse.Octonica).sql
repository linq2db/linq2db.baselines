-- ClickHouse.Octonica ClickHouse
SELECT
	t.Id,
	toInt64(ROW_NUMBER() OVER ()),
	toInt64(ROW_NUMBER() OVER (ORDER BY t.Id)),
	toInt64(ROW_NUMBER() OVER (ORDER BY t.Id))
FROM
	WindowFunctionTestEntity t

